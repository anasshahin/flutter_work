import 'package:flutter/material.dart';

import '../ widgets/category_grid_item.dart';
import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite, required this.availableMeals});
  final void Function (Meal meal)onToggleFavorite;
 final List<Meal> availableMeals;
  @override
  Widget build(BuildContext context) {
    return
       GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
            childAspectRatio: 2/3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,

      ),
      children: [
       for(var item in  availableCategories)
         CategoryGridItem(category: item,onToggleFavorite:onToggleFavorite ,availableMeals: availableMeals,),
      ],);

  }
}
