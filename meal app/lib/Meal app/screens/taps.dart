import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:meal_app/Meal%20app/data/dummy_data.dart';

import '../ widgets/drawer.dart';
import '../models/meal.dart';
import 'categories_screen.dart';
import 'filter_screen.dart';
import 'meals_screen.dart';
const kInitialFilter={
  Filter.glutenFree:false,
  Filter.vegetarian:false,
  Filter.vegan:false,
  Filter.lactoseFree:false,
};
class TapsScreen extends StatefulWidget {
  const TapsScreen({super.key});

  @override
  State<TapsScreen> createState() => _TapsScreenState();
}

class _TapsScreenState extends State<TapsScreen> {
  List<Meal> _favoriteMeal = [];

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ), // SnackBar
    );

  }

  int selectedScreen = 0;
  Map<Filter,bool>_selectedFilters=kInitialFilter;
  void _chooseScreen(index) {
    setState(() {
      selectedScreen = index;
    });
  }

  void _toggleMealFavorite(Meal meal) {
    if (_favoriteMeal.contains(meal)) {
      setState(() {
        _favoriteMeal.remove(meal);
      });
      _showInfoMessage("Meal is no longer a favorite");
    } else {
      setState(() {
        _favoriteMeal.add(meal);
      });
      _showInfoMessage("Marked as favorite");
    }
  }
  drawerFun() {
    Navigator.of(context).pop();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) =>  FilterScreen(currentFilter: _selectedFilters,)))
        .then((value) { setState(() {
      _selectedFilters=value?? false;
        });
          log(_selectedFilters.toString());
        });
  }
  @override
  Widget build(BuildContext context) {
    final List<Meal> availableMeals= dummyMeals.where((meal) {
      if(_selectedFilters[Filter.glutenFree]!&&!meal.isGlutenFree) return false;
      if(_selectedFilters[Filter.lactoseFree]!&&!meal.isLactoseFree) return false;
      if(_selectedFilters[Filter.vegan]!&&!meal.isVegan) return false;
      if(_selectedFilters[Filter.vegetarian]!&&!meal.isVegetarian) return false;
      return true;
    }
    ).toList();

    List<Widget> mainScreens = [
      CategoriesScreen(
        onToggleFavorite: _toggleMealFavorite,
        availableMeals: availableMeals,
      ),
      MealScreen(
        onToggleFavorite: _toggleMealFavorite,
        meals: _favoriteMeal,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedScreen == 0 ? "Categories" : "Favorites"),
      ),
      drawer:  DrawerMainScreen(function: drawerFun,),
      body: mainScreens[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
        ],
        onTap: _chooseScreen,
      ),
    );
  }

}
