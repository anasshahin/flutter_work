import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.currentFilter});
 final Map<Filter,bool>currentFilter;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

enum Filter{
  glutenFree,
  lactoseFree,
  vegan,
  vegetarian,
}
class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFreeFilter = false;
  bool _lactoseFreeFilter = false;
  bool _vegetarianFilter = false;
  bool _veganFilter = false;
  @override
  void initState() {
    super.initState();
    _glutenFreeFilter=widget.currentFilter[Filter.glutenFree]!;
    _lactoseFreeFilter=widget.currentFilter[Filter.lactoseFree]!;
    _vegetarianFilter=widget.currentFilter[Filter.vegetarian]!;
    _veganFilter=widget.currentFilter[Filter.vegan]!;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      body: WillPopScope(
        onWillPop: () async{
          Navigator.of(context).pop(
            {
              Filter.glutenFree:_glutenFreeFilter,
              Filter.lactoseFree:_lactoseFreeFilter,
              Filter.vegan:_veganFilter,
              Filter.vegetarian:_vegetarianFilter,
            }
          );
          return false;
        },
        child: Column(
          children: [
            filterMeal(
                context,
                "Gluten-free",
                'Only include gluten free',
                _glutenFreeFilter,
                (bool value) => setState(() => _glutenFreeFilter = value)),
            filterMeal(
                context,
                "Lactose-free",
                'Only include lactose-free meals',
                _lactoseFreeFilter,
                    (bool value) => setState(() => _lactoseFreeFilter = value)),
        filterMeal(
          context,
          "Vegan",
          'Only include vegan meals',
            _veganFilter,
              (bool value) => setState(() => _veganFilter = value)),


            filterMeal(
                context,
                "Vegetarian",
                'Only include vegetarian meals',
                _vegetarianFilter,
                    (bool value) => setState(() => _vegetarianFilter = value)),

          ],
        ),
      ),
    );
  }

  SwitchListTile filterMeal(
    BuildContext context,
    String title,
    String subtitle,
    bool boolFilter,
    Function(bool newValue) function,
  ) {
    return SwitchListTile(
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer),
        ),
        activeColor: Theme.of(context).colorScheme.tertiary,
        contentPadding: const EdgeInsets.only(left: 34, right: 22),
        value: boolFilter,
        onChanged: function);
  }
}
