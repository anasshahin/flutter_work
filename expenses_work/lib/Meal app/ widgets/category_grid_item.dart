import "package:flutter/material.dart";

import "../data/dummy_data.dart";
import "../models/category.dart";
import "../screens/meals_screen.dart";

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //GestureDetector
      onTap: () {
       final   filteredMeal= dummyMeals.where((element) => element.categories.contains(category.id)).toList();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) =>  MealScreen(title: category.title,meals:filteredMeal ,)));
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.54),
              category.color.withOpacity(.9),
            ],
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
