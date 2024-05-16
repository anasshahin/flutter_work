// import 'package:flutter/material.dart';
//
// interestBottomSheet() {
//   final yourInterestsController =
//   Get.put(YourInterestsController());
//   return Get.bottomSheet(
//     Padding(
//       padding: const EdgeInsets.only(top: 96),
//       child: Container(
//         height: Get.height,
//         width: Get.width,
//         padding: const EdgeInsets.only(top: 40),
//         decoration: BoxDecoration(
//           color: ColorConst.white,
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(40),
//             topRight: Radius.circular(40),
//           ),
//         ),
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Text(
//                     'Interests',
//                     style: TextStyleClass.interBold(
//                       size: 28.0,
//                       color: ColorConst.blue1,
//                     ),
//                   ),
//
//                   const SizedBox(
//                     height: 10,
//                   ),
//
//                   const SizedBox(
//                     height: 25,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 40),
//                     child: GridView.builder(
//                       shrinkWrap: true,
//                       itemCount:
//                       yourInterestsController.itemListInterest.length,
//                       physics: const NeverScrollableScrollPhysics(),
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           childAspectRatio: 2 / 0.65,
//                           crossAxisSpacing: 15,
//                           mainAxisSpacing: 10),
//                       itemBuilder: (context, index) {
//                         return GridItem(
//                           item: yourInterestsController.itemListInterest[index],
//                           isSelected: (bool value) {
//                             if (value) {
//                               if (yourInterestsController.selectedList.length !=
//                                   5) {
//                                 yourInterestsController.selectedList.add(
//                                     yourInterestsController
//                                         .itemListInterest[index]);
//                               }
//                             }
//                             else {
//                               yourInterestsController.selectedList.remove(
//                                   yourInterestsController
//                                       .itemListInterest[index]);
//                             }
//
//                             print('$index : $value');
//                           },
//                           selectedLength:
//                           yourInterestsController.selectedList.length,
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 150,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               height: 111,
//               width: Get.width,
//               padding:
//               const EdgeInsets.only(top: 16, bottom: 40, left: 24, right: 24),
//               decoration: BoxDecoration(
//                 color: ColorConst.white,
//                 border: Border.all(
//                   color: ColorConst.greyEB,
//                   width: 1,
//                 ),
//                 borderRadius: const BorderRadius.only(
//                   topRight: Radius.circular(24),
//                   topLeft: Radius.circular(24),
//                 ),
//               ),
//               child: CommonButton(
//                 onTap: () {
//                   // Get.to(() => AddPhotosScreen());
//
//                   for( var item in yourInterestsController.selectedList){
//                     log(item.title.toString());
//                     selectedIters.add(item.title);
//                   }
//
//                 },
//                 title: 'Done',
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     isScrollControlled: true,
//   );
// }
