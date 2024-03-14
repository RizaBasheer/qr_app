import 'package:flutter/material.dart';

class TextGet extends StatelessWidget {
  const TextGet({Key? key, required this.title,required this.control}) : super(key: key);
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
