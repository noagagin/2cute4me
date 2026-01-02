import 'package:flutter/material.dart';
import '../../data/isar/schemas.dart';
import '../../data/models/enums.dart';

class ListCard extends StatelessWidget {
  final ShoppingList list;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  
  const ListCard({
    super.key,
    required this.list,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final colors = _getColorPalette();
    final color = colors[list.colorIndex % colors.length];
    
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: color, width: 3),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    DogIcons.emoji(list.iconKey),
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              
              // Name_
