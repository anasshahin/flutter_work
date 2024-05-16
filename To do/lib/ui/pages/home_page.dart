import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/services/theme_services.dart';
import 'package:to_do/ui/pages/notification_screen.dart';
import 'package:to_do/ui/widgets/button.dart';

import '../widgets/input_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key}) ;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          onPressed: () {
            ThemeServices().switchTheme();
           // Get.to(const NotificationScreen(title: 'title', description: 'description', date: 'date'));
          },
          icon: const Icon(Icons.arrow_back),
        ),

      ),
      body: const Center(
        child: InputField(title: 'Title',note: 'note',),
      ),
    );
  }
}
