import 'package:flutter/material.dart';
import 'package:ui_app/qr.dart';
import 'package:ui_app/textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController roll = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Registration',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(height: 50, width: 200),
            TextGet(control:name,title : 'Enter your name'),
            SizedBox(height: 30, width: 200),
            TextGet(control:roll,title : 'Enter your roll no'),
            SizedBox(height: 30, width: 200),
            TextGet(control:email,title : 'Enter your email'),
            SizedBox(height: 30, width: 200),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Enter your password ',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 30, width: 200),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrCode()));
                },
                style:
                    TextButton.styleFrom(side: BorderSide(color: Colors.white)),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
