import 'package:isar/isar.dart';
import '../isar/isar_service.dart';
import '../isar/schemas.dart';
import '../models/enums.dart';

class ItemsRepo {
  final Isar _isar = IsarService.isar;
  
  // ========================================
  // CREATE
  // ========================================
  Future<Item> createItem({
    required int listId,
    required String name,
    required Category category,
  }) async {
    final item = Item()
      ..listId = listId
      ..name = name.trim()
      ..category = category.value
      ..isChecked = false
      ..createdAt = DateTime.now()
      ..updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.items.put(item);
    });
    
    // Update parent list's updatedAt
    await _updateParentList(listId);
    
    return item;
  }
  
  // ========================================
  // READ
  // ========================================
  Future<List<Item>> getItemsByList(int listId) async {
    return await _isar.items
        .where()
        .listIdEqualTo(listId)
        .sortByCategory()
        .thenByCreatedAt()
        .findAll();
  }
  
  // Grouped by category
  Future<Map<Category, List<Item>>> getItemsGrouped(int listId) async {
    final items = await getItemsByList(listId);
    
    final Map<Category, List<Item>> grouped = {};
    for (var item in items) {
      final cat = Category.fromInt(item.category);
      grouped.putIfAbsent(cat, () => []).add(item);
    }
    
    return grouped;
  }
  
  Stream<List<Item>> watchItemsByList(int listId) {
    return _isar.items
        .where()
        .listIdEqualTo(listId)
        .sortByCategory()
        .thenByCreatedAt()
        .watch(fireImmediately: true);
  }
  
  // ========================================
  // UPDATE
  // ========================================
  Future<void> updateItem(Item item) async {
    item.updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.items.put(item);
    });
    
    await _updateParentList(item.listId);
  }
  
  Future<void> toggleChecked(int itemId) async {
    final item = await _isar.items.get(itemId);
    if (item == null) return;
    
    item.isChecked = !item.isChecked;
    item.checkedAt = item.isChecked ? DateTime.now() : null;
    
    await updateItem(item);
  }
  
  // ========================================
  // DELETE
  // ========================================
  Future<void> deleteItem(int itemId) async {
    final item = await _isar.items.get(itemId);
    if (item == null) return;
    
    final listId = item.listId;
    
    await _isar.writeTxn(() async {
      await _isar.items.delete(itemId);
    });
    
    await _updateParentList(listId);
  }
  
  // ========================================
  // HELPER
  // ========================================
  Future<void> _updateParentList(int listId) async {
    final list = await _isar.shoppingLists.get(listId);
    if (list == null) return;
    
    list.updatedAt = DateTime.now();
    await _isar.writeTxn(() async {
      await _isar.shoppingLists.put(list);
    });
  }
}
