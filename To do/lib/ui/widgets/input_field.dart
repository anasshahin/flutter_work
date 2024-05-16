import 'package:flutter/material.dart';
import 'package:to_do/ui/size_config.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.title,
      required this.note,
      this.controller,
      this.widget});

  final String title;
  final String note;
  final TextEditingController? controller;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: TextFormField(

        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(12)),
            labelText: title,
            suffixIcon: const Icon(Icons.alarm),
            hintText: note),
      ),
    );
  }
}
