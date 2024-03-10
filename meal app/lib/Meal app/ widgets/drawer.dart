import 'dart:developer';
import "package:flutter/material.dart";

import "../screens/filter_screen.dart";

class DrawerMainScreen extends StatelessWidget {
  const DrawerMainScreen({super.key, required this.function});
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // like container
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onPrimary.withOpacity(0.8)
            ])),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 45,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Cooking up ...',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pop(),
            leading: Icon(
              Icons.restaurant,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            title: Text(
              "Meals",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          ListTile(
            onTap: function,
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            title: Text(
              "Filters",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
