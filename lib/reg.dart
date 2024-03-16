import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ui_app/login.dart';
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

  void register() async{
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'name': name.text,
          'email': email.text,
          'rollno': roll.text,
          'password': pass.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data ["message"]);
    if (response.statusCode== 200){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data ["message"])));
    }
    String g_name = name.text;
    print(g_name);
    print(roll);
    print(email);
    print(pass);
  }

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
            SizedBox(height: 60, width: 200),
            TextGet(
              control: name,
              title: 'Enter your name',
            ),
            SizedBox(height: 30, width: 200),
            TextGet(control: roll, title: 'Enter your roll no'),
            SizedBox(height: 30, width: 200),
            TextGet(control: email, title: 'Enter your email'),
            SizedBox(height: 30, width: 200),
            TextField(
              controller: pass,
              obscureText: true,
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
                  register();
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
