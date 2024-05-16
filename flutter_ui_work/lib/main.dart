import 'package:flutter/material.dart';
import 'package:flutter_ui_work/quiz%20app/first_way/fisrt%20_question.dart';


import 'Splash Screen & page view/Page View/page_view.dart';
import 'Splash Screen & page view/splash_screen.dart';

import 'bars/Google Nav Bar/google_nav_bar.dart';
import 'lists/Expandable List/expandable_list.dart';

void main() async{
  /*WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance() ;
 var insert=prefs.getBool('insert');
 Widget  myPrefState=(insert== false || null == insert)?  const MainPageView():const Question();*/
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   const GoogleNavBarWidget(),
    );
  }
}
class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/a':(ctx)=>const Question(),
        '/b':(ctx)=>const SplashScreenWidget(),
      },
      home:  const PageViewWidget(),
    );
  }
}

    class ThemeAppColors extends StatefulWidget {
  const ThemeAppColors({Key? key}) : super(key: key);

  @override
  State<ThemeAppColors> createState() => _ThemeAppColorsState();
}

class _ThemeAppColorsState extends State<ThemeAppColors> {
  ThemeMode themeMode = ThemeMode.dark;
  bool valueMood = false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp (
      debugShowCheckedModeBanner:false ,
      themeMode:themeMode ,// set up the theme
      theme: ThemeData(primaryColor: Colors.white,canvasColor:Colors.white, ),
      darkTheme: ThemeData(primaryColor: Colors.black26,canvasColor:Colors.black26),
      home: Scaffold(
        appBar: AppBar(),
        body: buildSwitch(),
      ),
    );
  }

  Center buildSwitch() {
    return Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: [
        const  Text('Light',style: TextStyle(fontWeight: FontWeight.bold),),
          Switch(value:valueMood , onChanged: (val){
            setState(() {
              valueMood = val;
              if(!valueMood) {
                themeMode = ThemeMode.dark;
              } else {
                themeMode = ThemeMode.light;
              }
            });
          }),
        const  Text('Dark',style: TextStyle(fontWeight: FontWeight.bold),),
           // SwitchListTile(value: value, onChanged: onChanged,)
          ],
        ),
      );
  }
}
