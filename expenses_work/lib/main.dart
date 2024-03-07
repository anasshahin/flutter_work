import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Meal app/screens/categories_screen.dart';
import 'auth.dart';
import 'expanses_list/expenses.dart';

void main() {
  runApp(const MyApp());
}
var myColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xFFAF38EB) );
var myDarkColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xFFAF38EB) );
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData().copyWith(
        colorScheme: myColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: myColorScheme.onPrimaryContainer,
          foregroundColor: myColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: myColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8)

        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            backgroundColor: myColorScheme.primaryContainer
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight:FontWeight.normal,
            color: myColorScheme.onSecondaryContainer,
            fontSize: 17
          )
        )
      ),
      darkTheme: ThemeData.dark().copyWith(
          colorScheme: myDarkColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: myDarkColorScheme.onPrimaryContainer,
            foregroundColor: myDarkColorScheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
              color: myDarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8)

          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style:ElevatedButton.styleFrom(
                backgroundColor: myDarkColorScheme.primaryContainer
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight:FontWeight.normal,
                  color: myDarkColorScheme.onSecondaryContainer,
                  fontSize: 17
              )
          ),
        bottomSheetTheme: const BottomSheetThemeData().copyWith(
          backgroundColor: myDarkColorScheme.onPrimaryContainer
        )
      ),
      home: const AuthScreen(),
    );
  }
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
      home:const CategoriesScreen(),
    );
  }
}

