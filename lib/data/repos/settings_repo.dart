import 'package:isar/isar.dart';
import '../isar/isar_service.dart';
import '../isar/schemas.dart';
import '../models/enums.dart';

class SettingsRepo {
  final Isar _isar = IsarService.isar;
  
  // ========================================
  // READ (Singleton - always id=0)
  // ========================================
  Future<AppSettings> getSettings() async {
    final settings = await _isar.appSettings.get(0);
    if (settings == null) {
      throw Exception('AppSettings not initialized');
    }
    return settings;
  }
  
  Stream<AppSettings?> watchSettings() {
    return _isar.appSettings.watchObject(0, fireImmediately: true);
  }
  
  // ========================================
  // UPDATE
  // ========================================
  Future<void> updateSettings({
    String? languageCode,
    DirectionMode? directionMode,
  }) async {
    final settings = await getSettings();
    
    if (languageCode != null) settings.languageCode = languageCode;
    if (directionMode != null) settings.directionMode = directionMode.value;
    
    settings.updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.appSettings.put(settings);
    });
  }
}
