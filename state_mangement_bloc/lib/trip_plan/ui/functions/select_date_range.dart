// import 'package:flutter/material.dart';
//
// Future<void> _selectDateRange(BuildContext context) async {
//   var newDateRange = await showDateRangePicker(
//     context: context,
//     firstDate: DateTime.now(),
//     lastDate: DateTime.now().add(const Duration(days: 365)),
//     initialDateRange: selectedDateRange ?? DateTimeRange(
//       start: DateTime.now(),
//       end: DateTime.now().add(const Duration(days: 7)),
//     ),
//   ).then((value)async{
//     setState(() {
//       date_first= DateFormat.yMd().format(value!.start);
//       date_last= DateFormat.yMd().format(value.end);
//       if(value.end.month==value.start.month) {
//         _daysOfTrip =   value.end.day - value.start.day;
//       }else {
//         List<int> monthDays=[31,28,31,30,31,30,31,31,30,31,30,31];
//
//         int monthDiff = value.end.month - value.start.month;
//         int daysInDiff=0 ;
//         for(int i=0;i<monthDiff;i++){
//           daysInDiff =daysInDiff+ monthDays[value.start.month+i-1];
//         }
//         _daysOfTrip = daysInDiff + value.end.day - value.start.day ;
//       }
//       log(_daysOfTrip.toString());
//     });
//
//   }
//   );
//
//   if (newDateRange != null) {
//     setState(() => _selectedDateRange = newDateRange);
//   }
// }