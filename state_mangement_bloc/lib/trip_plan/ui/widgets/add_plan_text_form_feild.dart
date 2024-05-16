import"package:flutter/material.dart";
class AddPlanTextFormField extends StatelessWidget {
   const AddPlanTextFormField({super.key,required this.controller,required this.label});
 final TextEditingController controller;
 final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'please fill the trip name';
          }
          return null;
        },
      ),
    );;
  }
}

