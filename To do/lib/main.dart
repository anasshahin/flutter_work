import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:to_do/services/theme_services.dart';
import 'package:to_do/ui/pages/home_page.dart';
import 'package:to_do/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme:  Themes.dark,
      themeMode: ThemeServices().theme,
      home: const HomePage(),
    );
  }
}
