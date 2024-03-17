import 'package:flutter/material.dart';
import 'package:shop_app/widgets/grocery_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true,).copyWith(
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor:const Color.fromARGB(255, 146, 230, 247),
          surface:const Color.fromARGB(255, 44, 50, 60)
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 44, 50, 60)
      ),
      home:const GroceryList(),
    );
  }
}

