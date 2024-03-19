import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ui_app/profile.dart';
import 'package:ui_app/qr.dart';
import 'package:ui_app/reg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController roll = TextEditingController();
  TextEditingController pass = TextEditingController();
  Future<void> LoginPage()async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'rollno': roll.text,
          'password': pass.text,
        }));
    var decodeData = jsonDecode(response.body);
    print(decodeData);
    if (response.statusCode== 200){
      Navigator.push(context, MaterialPageRoute(builder: (context) => QrCode()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(decodeData ["message"])));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
            ),
            SizedBox(height: 30, width: 200),
            TextField(
              controller: roll,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.white)),
                label: Text(
                  'Enter you roll no',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30, width: 200),
            TextField(
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.white)),
                hintText: 'Enter your password ',hintStyle: TextStyle(color: Colors.white)
                  ),
            ),
            SizedBox(height: 30, width: 200),
            TextButton(
                onPressed: () {
                  LoginPage();
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white),
                ),
                child: Text('Login')),
            SizedBox(height: 30, width: 200),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>Register()));
            }, child: Text(
              'Dont have an account? Register',
              style: TextStyle(color: Colors.white),
            ))
          ],
        ),
      ),
    );
  }
}
