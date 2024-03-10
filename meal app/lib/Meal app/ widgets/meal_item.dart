import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/meal.dart';
import '../screens/details_screen.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onToggleFavorite});
  final void Function (Meal meal)onToggleFavorite;

  final Meal meal;

  String get mealComplexity {
    switch (meal.complexity) {
      case Complexity.hard:
        return "Hard";
      case Complexity.challenging:
        return "Challenging";
      case Complexity.simple:
        return "Simple";
      default:
        return "Unknown";
    }
  }

  String get mealAffordability {
    switch (meal.affordability) {
      case Affordability.affordable:
        return "Affordable";
      case Affordability.luxurious:
        return "Luxurious";
      case Affordability.pricey:
        return "Pricey";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) =>  DetailsScreen(meal: meal,onToggleFavorite: onToggleFavorite,))),
        child: Stack(
          children: [
            FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl)),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 44,
                    vertical: 6,
                  ),
                  color: Colors.black54,
                  child: Column(
                    children: [
                      Text(
                        meal.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          itemFeature(Icons.schedule, meal.duration.toString()),
                          itemFeature(Icons.work, mealComplexity),
                          itemFeature(Icons.attach_money, mealAffordability),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Row itemFeature(IconData icon, text) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 6,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
