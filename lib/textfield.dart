import 'package:flutter/material.dart';

class TextType extends StatelessWidget {
  const TextType({Key? key, required this.title,required this.control}) : super(key: key);
  final String title;
  final TextEditingController control;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.white)),
          hintText: title,
          hintStyle: TextStyle(color: Colors.white)),
    );
  }
}
