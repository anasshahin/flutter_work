import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Meal app/screens/taps.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(useMaterial3: true,colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: const Color.fromARGB(255, 132, 0, 51),
      ),
          textTheme:GoogleFonts.latoTextTheme()
      ),
      home:const TapsScreen(),
    );
  }
}
