import 'package:isar/isar.dart';
import '../isar/isar_service.dart';
import '../isar/schemas.dart';

class ListsRepo {
  final Isar _isar = IsarService.isar;
  
  // ========================================
  // CREATE
  // ========================================
  Future<ShoppingList> createList({
    required String name,
    required String iconKey,
  }) async {
    // Auto-assign color index
    final existingCount = await _isar.shoppingLists.count();
    final colorIndex = existingCount % 5; // Assuming 5 colors
    
    final list = ShoppingList()
      ..name = name.trim()
      ..iconKey = iconKey
      ..colorIndex = colorIndex
      ..createdAt = DateTime.now()
      ..updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.shoppingLists.put(list);
    });
    
    return list;
  }
  
  // ========================================
  // READ
  // ========================================
  Future<List<ShoppingList>> getAllLists() async {
    return await _isar.shoppingLists
        .where()
        .sortByUpdatedAtDesc()
        .findAll();
  }
  
  Future<ShoppingList?> getListById(int id) async {
    return await _isar.shoppingLists.get(id);
  }
  
  Stream<List<ShoppingList>> watchAllLists() {
    return _isar.shoppingLists
        .where()
        .sortByUpdatedAtDesc()
        .watch(fireImmediately: true);
  }
  
  // ========================================
  // UPDATE
  // ========================================
  Future<void> updateList(ShoppingList list) async {
    list.updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.shoppingLists.put(list);
    });
  }
  
  Future<void> updateListName(int id, String newName) async {
    final list = await getListById(id);
    if (list == null) return;
    
    list.name = newName.trim();
    await updateList(list);
  }
  
  Future<void> updateLastOpened(int id) async {
    final list = await getListById(id);
    if (list == null) return;
    
    list.lastOpenedAt = DateTime.now();
    await updateList(list);
  }
  
  // ========================================
  // DELETE
  // ========================================
  Future<void> deleteList(int id) async {
    await _isar.writeTxn(() async {
      // Delete the list
      await _isar.shoppingLists.delete(id);
      
      // Delete all items in this list
      final items = await _isar.items
          .where()
          .listIdEqualTo(id)
          .findAll();
      await _isar.items.deleteAll(items.map((e) => e.id).toList());
      
      // Delete reminder if exists
      final reminder = await _isar.reminders
          .where()
          .listIdEqualTo(id)
          .findFirst();
      if (reminder != null) {
        await _isar.reminders.delete(reminder.id);
      }
    });
  }
}
