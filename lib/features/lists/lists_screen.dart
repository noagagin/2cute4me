import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repos/lists_repo.dart';
import '../../data/isar/schemas.dart';
import 'list_card.dart';
import 'add_edit_list_screen.dart';
import '../../widgets/empty_state.dart';

class ListsScreen extends ConsumerWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listsRepo = ListsRepo();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Lists'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
        ],
      ),
      body: StreamBuilder<List<ShoppingList>>(
        stream: listsRepo.watchAllLists(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          
          final lists = snapshot.data!;
          
          if (lists.isEmpty) {
            return EmptyState(
              icon: '🐶',
              title: 'No lists yet',
              message: 'Create your first shopping list!',
              actionLabel: 'Create List',
              onAction: () => _navigateToAddList(context),
            );
          }
          
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: lists.length,
            itemBuilder: (context, index) {
              return ListCard(
                list: lists[index],
                onTap: () => _navigateToListDetails(context, lists[index]),
                onEdit: () => _navigateToEditList(context, lists[index]),
                onDelete: () => _confirmDelete(context, lists[index]),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _navigateToAddList(context),
        icon: const Icon(Icons.add),
        label: const Text('New List'),
      ),
    );
  }
  
  void _navigateToAddList(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const AddEditListScreen(),
      ),
    );
  }
  
  void _navigateToEditList(BuildContext context, ShoppingList list) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AddEditListScreen(list: list),
      ),
    );
  }
  
  void _navigateToListDetails(BuildContext context, ShoppingList list) {
    // TODO: Navigate to list details
    // Navigator.push(context, MaterialPageRoute(builder: (_) => ListDetailsScreen(list: list)));
  }
  
  void _confirmDelete(BuildContext context, ShoppingList list) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete List?'),
        content: Text('Are you sure you want to delete "${list.name}"? All items will be deleted.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    
    if (confirmed == true) {
      await ListsRepo().deleteList(list.id);
    }
  }
}
