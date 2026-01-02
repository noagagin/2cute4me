import 'package:isar/isar.dart';
import '../isar/isar_service.dart';
import '../isar/schemas.dart';
import '../models/enums.dart';

class ReminderRepo {
  final Isar _isar = IsarService.isar;
  
  // ========================================
  // CREATE / UPDATE (Upsert pattern)
  // ========================================
  Future<Reminder> setReminder({
    required int listId,
    required bool enabled,
    required ReminderType type,
    DateTime? oneTimeAt,
    int? weeklyDay,
    int? weeklyTimeMinutes,
  }) async {
    // Validation
    if (type == ReminderType.oneTime) {
      if (oneTimeAt == null || oneTimeAt.isBefore(DateTime.now())) {
        throw ArgumentError('Invalid oneTimeAt for OneTime reminder');
      }
    } else if (type == ReminderType.weekly) {
      if (weeklyDay == null || weeklyDay < 1 || weeklyDay > 7) {
        throw ArgumentError('Invalid weeklyDay (must be 1-7)');
      }
      if (weeklyTimeMinutes == null || weeklyTimeMinutes < 0 || weeklyTimeMinutes > 1439) {
        throw ArgumentError('Invalid weeklyTimeMinutes (must be 0-1439)');
      }
    }
    
    // Find existing or create new
    Reminder? existing = await getReminderByList(listId);
    
    if (existing == null) {
      existing = Reminder()
        ..listId = listId
        ..notificationId = listId // Simple approach: use listId as notificationId
        ..createdAt = DateTime.now();
    }
    
    existing
      ..enabled = enabled
      ..type = type.value
      ..oneTimeAt = type == ReminderType.oneTime ? oneTimeAt : null
      ..weeklyDay = type == ReminderType.weekly ? weeklyDay : null
      ..weeklyTimeMinutes = type == ReminderType.weekly ? weeklyTimeMinutes : null
      ..updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.reminders.put(existing!);
    });
    
    return existing;
  }
  
  // ========================================
  // READ
  // ========================================
  Future<Reminder?> getReminderByList(int listId) async {
    return await _isar.reminders
        .where()
        .listIdEqualTo(listId)
        .findFirst();
  }
  
  Future<List<Reminder>> getAllEnabledReminders() async {
    return await _isar.reminders
        .where()
        .enabledEqualTo(true)
        .findAll();
  }
  
  // ========================================
  // DELETE
  // ========================================
  Future<void> deleteReminder(int listId) async {
    final reminder = await getReminderByList(listId);
    if (reminder == null) return;
    
    await _isar.writeTxn(() async {
      await _isar.reminders.delete(reminder.id);
    });
  }
}
