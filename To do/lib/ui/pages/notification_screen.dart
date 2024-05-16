import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required this.title, required this.description, required this.date});

  final String title;
  final String description;
  final String date;

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).dialogBackgroundColor,
      ),
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                'Hello Anas',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Get.isDarkMode ? Colors.white : darkGreyClr),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'you have anew reminder',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Get.isDarkMode ? Colors.grey[100] : darkGreyClr),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: primaryClr, borderRadius: BorderRadius.circular(30)),
              child:  SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    showText('Title',Icons.text_format),
                    Text(
                      widget.title,
                      style: const TextStyle(color: Colors.white,fontSize: 20),),
                   const  SizedBox(height: 20,),
                    showText('Description',Icons.description),
                     Text(
                      widget.description,
                      style: const TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.justify,),
                    const  SizedBox(height: 20,),

                    showText('Date',Icons.calendar_today_outlined),
                    Text(
                      widget.date,
                      style: const TextStyle(color: Colors.white,fontSize: 20,),textAlign: TextAlign.justify,),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }

  Row showText(String text,IconData icon, ){
    return Row(children: [

                    Icon(icon,color: Colors.white,),
                    const  SizedBox(width: 20,),

                    Text(
                      text,
                      style:const TextStyle(color: Colors.white ,fontSize: 30),
                    ),
                  ],);
  }
}
