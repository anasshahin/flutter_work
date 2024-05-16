/*import 'package:datingapp/screens/bottomScreen/home/bottomNavigation/bottom_navigation_screen.dart';
import 'package:datingapp/trip_planning.dart';
import 'package:datingapp/utiles/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewPlanPage extends StatefulWidget {
  const NewPlanPage({super.key});

  @override
  State<NewPlanPage> createState() => _NewPlanPageState();
}

class _NewPlanPageState extends State<NewPlanPage> {
  final PlanController planController = Get.find<PlanController>();

  //bool _isButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){
            Get.to(
                BottomNavigation()
            );},
            icon: Icon(Icons.arrow_circle_left_outlined,
              size: 30,
            ),
            color:Colors.blueAccent,

          ),

        ],
        title: Text('your plans'),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Image(
            image: AssetImage(
              'assets/images/blue_ring.png',
            ),
          ),
        ),
        centerTitle: true,
      ),
     body: Column(
       children: [
         Expanded(
           child: Obx(() {
             return ListView.builder(
               itemCount: planController.plans.length,
               itemBuilder: (context, index) {
                 var plan = planController.plans[index];
                 return Visibility(
                   visible: plan.isVisible,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 37),
                     child: Stack(
                       alignment: Alignment.centerRight,
                       children: [
                         CommonButton(
                           onTap: () {},
                           width: Get.width,
                           title: plan.title,
                         ),
                         IconButton(
                           icon: Icon(Icons.delete, color: Colors.white),
                           onPressed: () {
                             planController.plans.removeAt(index);
                           },
                         ),
                       ],
                     ),
                   ),
                 );
               },
             );
           }),
         ),
          Padding(
             padding: const EdgeInsets.fromLTRB(65, 50, 50, 20),
             child: IconButton(
               icon: Icon(
                 Icons.add_circle_outline,
                 semanticLabel: 'Plan a new trip',
                 color: Colors.blueAccent,
                 size: 60,
               ),
               onPressed: () {
                 Get.to(() => TripPlanning());
               },
             ),
           ),

       ],
     ),
    );
  }
}




class Plan {
  String title;
  bool isVisible;

  Plan({required this.title, this.isVisible = true});
}

class PlanController extends GetxController {
  var plans = <Plan>[].obs;
  var isButtonVisible = false.obs; // Set initial visibility to false

  void addPlan(String title) {
    plans.add(Plan(title: title));
  }

  void removePlan(int index) {
    plans.removeAt(index);
  }

  void toggleButtonVisibility(bool isVisible) {
    isButtonVisible.value = isVisible;
  }

  bool get getButtonVisibility => isButtonVisible.value;
}

*/
