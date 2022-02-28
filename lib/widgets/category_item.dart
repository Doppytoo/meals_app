import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category item;

  CategoryItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(8),
      child: Text(item.title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [item.color.withOpacity(0.7), item.color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
