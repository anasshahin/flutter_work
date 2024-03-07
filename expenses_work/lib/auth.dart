import 'package:flutter/material.dart';
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Stack(
        
              children: [
                Container(
                    color: const Color(0XFFFF6D1C),
                    height: 200,
        
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: ()=>Navigator.of(context).pop(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: (){},
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xfff3b95f),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      margin: const EdgeInsets.only(top: 150),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(Icons.person_outlined,size: 100,color: Colors.white,)),
        
                )
        
              ],
            ),
          const  SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Username',style: TextStyle(color:Color(0XFFFF6D1C) ),),
                  prefixIcon: Icon(Icons.person_2_outlined,color:Color(0XFFFF6D1C) ,)
                    
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Mail@gmail.com',style: TextStyle(color:Color(0XFFFF6D1C) ),),
                    prefixIcon: Icon(Icons.mail_outline,color:Color(0XFFFF6D1C) ,)
        
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Gender',style: TextStyle(color:Color(0XFFFF6D1C) ),),
                    prefixIcon: Icon(Icons.transgender,color:Color(0XFFFF6D1C) ,)
        
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Position',style: TextStyle(color:Color(0XFFFF6D1C) ),),
                    prefixIcon: Icon(Icons.work,color:Color(0XFFFF6D1C) ,)
        
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(
                      label: Text('Attended Events',style: TextStyle(color:Color(0XFFFF6D1C) ),),
                    prefixIcon: Icon(Icons.stacked_bar_chart,color:Color(0XFFFF6D1C) ,)
        
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              backgroundColor: MaterialStateProperty.all(const Color(0XFFFF6D1C) )
            ), child: const Text('Sign Out',style: TextStyle(color: Colors.white,fontSize: 20),),)
          ],
        ),
      ),
    );
  }
}
