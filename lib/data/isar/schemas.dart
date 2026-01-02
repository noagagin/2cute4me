import 'package:isar/isar.dart';

part 'schemas.g.dart';

// ========================================
// ShoppingList Collection
// ========================================
@collection
class ShoppingList {
  Id id = Isar.autoIncrement;
  
  @Index(caseSensitive: false)
  late String name;
  
  late String iconKey; // e.g., "dog_01", "dog_02"
  late int colorIndex; // 0..N-1 for color palette
  
  late DateTime createdAt;
  
  @Index()
  late DateTime updatedAt;
  
  DateTime? lastOpenedAt;
  DateTime? entryConfettiLastAt; // for confetti throttling (optional)
  
  // Helper: Get color from palette
  // (You'll implement this in your UI layer)
}

// ========================================
// Item Collection
// ========================================
@collection
class Item {
  Id id = Isar.autoIncrement;
  
  @Index()
  late int listId; // FK to ShoppingList
  
  late String name;
  
  late int category; // enum as int (0=Produce, 1=Dairy, etc.)
  
  late bool isChecked;
  
  late DateTime createdAt;
  late DateTime updatedAt;
  
  DateTime? checkedAt; // when user checked it
  
  int orderInCategory = 0; // for manual ordering (optional)
  
  // Composite indexes for efficient queries
  @Index(composite: [CompositeIndex('listId')])
  int get categoryIndex => category;
  
  @Index(composite: [CompositeIndex('listId')])
  int get checkedIndex => isChecked ? 1 : 0;
}

// ========================================
// Reminder Collection
// ========================================
@collection
class Reminder {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true) // One reminder per list
  late int listId;
  
  late bool enabled;
  
  late int type; // 0=OneTime, 1=Weekly
  
  // For OneTime
  DateTime? oneTimeAt;
  
  // For Weekly
  int? weeklyDay; // 1=Monday, 7=Sunday
  int? weeklyTimeMinutes; // 0..1439 (minutes from midnight)
  
  late int notificationId; // for Android notification channel
  
  late DateTime createdAt;
  late DateTime updatedAt;
}

// ========================================
// AppSettings Collection (Singleton)
// ========================================
@collection
class AppSettings {
  Id id = 0; // Always 0 (singleton pattern)
  
  late String languageCode; // "en" or "he"
  late int directionMode; // 0=Auto, 1=LTR, 2=RTL
  
  late DateTime createdAt;
  late DateTime updatedAt;
}

// ========================================
// TipStatus Collection (Singleton)
// ========================================
@collection
class TipStatus {
  Id id = 0; // Always 0
  
  bool hasTipped = false;
  DateTime? lastTipAt;
  int tipLevel = 0; // 0=None, 1=Small, 2=Medium, 3=Big
  
  late DateTime createdAt;
  late DateTime updatedAt;
}
