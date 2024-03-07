import 'package:flutter/material.dart';

import '../ widgets/category_grid_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
            childAspectRatio: 2/3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,

      ),
      children: [
       for(var item in  availableCategories)
         CategoryGridItem(category: item,),
      ],),
    );
  }
}
