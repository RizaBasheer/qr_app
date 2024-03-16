import 'package:flutter/material.dart';
import 'package:ui_app/textfield.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController get = TextEditingController();
   LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          TextGet(title:'Enter here', control: get,),
          TextButton(onPressed: (){}, child: Text('')),
        ],
      ),
    );
  }
}
