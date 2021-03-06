import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/meal_card.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  static const route = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle ?? ''),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealCard(categoryMeals[index]);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
