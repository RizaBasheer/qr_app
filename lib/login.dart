import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.white)),
                hintText: 'Enter your password ',hintStyle: TextStyle(color: Colors.white)
                  ),
            ),
            SizedBox(height: 30, width: 200),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white),
                ),
                child: Text('Login')),
            SizedBox(height: 30, width: 200),
            Text(
              'Dont have an account? Register',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
