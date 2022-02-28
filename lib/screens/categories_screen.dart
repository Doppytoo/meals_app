import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        children: DUMMY_CATEGORIES.map((item) => CategoryItem(item)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
        ),
      ),
    );
  }
}
