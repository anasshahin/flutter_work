import 'package:flutter/material.dart';

import '../ widgets/meal_item.dart';
import '../models/meal.dart';
class MealScreen extends StatelessWidget {
    MealScreen({super.key,  this.title,required this.meals, required this.onToggleFavorite,});
   String? title;
  final List<Meal> meals;
   final void Function (Meal meal)onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: title==null?null:AppBar(title: Text(title!),),
      body: SingleChildScrollView(
        child: Column(
          children: meals.map((e) => MealItem(meal: e,onToggleFavorite: onToggleFavorite,)).toList(),
        ),
      ),
    );
  }
}
