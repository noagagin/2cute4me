// ========================================
// Category Enum
// ========================================
enum Category {
  produce(0, 'Produce', '🥬'),
  dairy(1, 'Dairy', '🥛'),
  meat(2, 'Meat', '🥩'),
  pantry(3, 'Pantry', '🥫'),
  frozen(4, 'Frozen', '🧊'),
  cleaning(5, 'Cleaning', '🧹'),
  pets(6, 'Pets', '🐾'),
  other(7, 'Other', '📦');

  const Category(this.value, this.nameEn, this.emoji);
  
  final int value;
  final String nameEn;
  final String emoji;
  
  // Convert int to enum
  static Category fromInt(int value) {
    return Category.values.firstWhere(
      (cat) => cat.value == value,
      orElse: () => Category.other,
    );
  }
  
  // Localized name (implement with l10n later)
  String localizedName(String locale) {
    // TODO: Use l10n
    return nameEn;
  }
}

// ========================================
// ReminderType Enum
// ========================================
enum ReminderType {
  oneTime(0),
  weekly(1);

  const ReminderType(this.value);
  final int value;
  
  static ReminderType fromInt(int value) {
    return ReminderType.values.firstWhere(
      (type) => type.value == value,
      orElse: () => ReminderType.oneTime,
    );
  }
}

// ========================================
// DirectionMode Enum
// ========================================
enum DirectionMode {
  auto(0),
  forceLtr(1),
  forceRtl(2);

  const DirectionMode(this.value);
  final int value;
  
  static DirectionMode fromInt(int value) {
    return DirectionMode.values.firstWhere(
      (mode) => mode.value == value,
      orElse: () => DirectionMode.auto,
    );
  }
}

// ========================================
// Dog Icon Keys (for icon picker)
// ========================================
class DogIcons {
  static const List<String> all = [
    'dog_01', // 🐕
    'dog_02', // 🐶
    'dog_03', // 🦴
    'dog_04', // 🐾
    'dog_05', // ❤️
    'dog_06', // 🐕‍🦺
    'dog_07', // 🎾
    'dog_08', // 🦮
  ];
  
  static String emoji(String key) {
    switch (key) {
      case 'dog_01': return '🐕';
      case 'dog_02': return '🐶';
      case 'dog_03': return '🦴';
      case 'dog_04': return '🐾';
      case 'dog_05': return '❤️';
      case 'dog_06': return '🐕‍🦺';
      case 'dog_07': return '🎾';
      case 'dog_08': return '🦮';
      default: return '🐶';
    }
  }
}
