import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'schemas.dart';

class IsarService {
  static Isar? _isar;
  
  // Singleton access
  static Isar get isar {
    if (_isar == null) {
      throw Exception('Isar not initialized. Call IsarService.init() first.');
    }
    return _isar!;
  }
  
  // Initialize Isar (call once in main.dart)
  static Future<void> init() async {
    if (_isar != null) return; // Already initialized
    
    final dir = await getApplicationDocumentsDirectory();
    
    _isar = await Isar.open(
      [
        ShoppingListSchema,
        ItemSchema,
        ReminderSchema,
        AppSettingsSchema,
        TipStatusSchema,
      ],
      directory: dir.path,
      inspector: true, // Enable Isar Inspector for debugging
    );
    
    // Initialize default settings if not exist
    await _initializeDefaults();
  }
  
  // Initialize default records (singleton collections)
  static Future<void> _initializeDefaults() async {
    final isar = IsarService.isar;
    
    // AppSettings
    final settingsCount = await isar.appSettings.count();
    if (settingsCount == 0) {
      await isar.writeTxn(() async {
        await isar.appSettings.put(AppSettings()
          ..id = 0
          ..languageCode = 'en'
          ..directionMode = 0 // Auto
          ..createdAt = DateTime.now()
          ..updatedAt = DateTime.now());
      });
    }
    
    // TipStatus
    final tipCount = await isar.tipStatus.count();
    if (tipCount == 0) {
      await isar.writeTxn(() async {
        await isar.tipStatus.put(TipStatus()
          ..id = 0
          ..hasTipped = false
          ..tipLevel = 0
          ..createdAt = DateTime.now()
          ..updatedAt = DateTime.now());
      });
    }
  }
  
  // Reset all data (for Settings > Reset)
  static Future<void> resetAllData() async {
    final isar = IsarService.isar;
    
    await isar.writeTxn(() async {
      await isar.shoppingLists.clear();
      await isar.items.clear();
      await isar.reminders.clear();
    });
    
    // Re-initialize defaults
    await _initializeDefaults();
  }
  
  // Close Isar (call on app dispose, usually not needed)
  static Future<void> close() async {
    await _isar?.close();
    _isar = null;
  }
}
