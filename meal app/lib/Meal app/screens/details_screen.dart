import 'package:flutter/material.dart';

import '../models/meal.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.meal, required this.onToggleFavorite});
  final void Function (Meal meal)onToggleFavorite;

  final Meal meal;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            widget.onToggleFavorite(widget.meal);
            setState(() {
              isFav=!isFav;
            });
            }, icon:  Icon(!isFav?Icons.star_border:Icons.star))
        ],
        centerTitle: true,
        title: Text(widget.meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.scaleDown,
            ),
             const SizedBox(height: 14,),
             Text("Ingredients",style:Theme.of(context).textTheme.bodyMedium!.copyWith(
               color: Theme.of(context).colorScheme.primary,
               fontSize: 20
             ),

            ) ,
            const SizedBox(height: 14,),
            for(var ingredient in widget.meal.ingredients)
              Text(ingredient,style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontSize: 15,
              ),
                textAlign: TextAlign.center,
              ) ,
            const SizedBox(height: 24,),
            Text("Steps",style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20
            ),

            ) ,
            const SizedBox(height: 14,),
            for(var step in widget.meal.steps)
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
                child: Text(step,style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  fontSize: 15,
                ),
                  textAlign: TextAlign.center,
                ),
              ) ,
          ],
        ),
      ),
    );
  }
}
