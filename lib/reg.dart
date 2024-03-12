import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('Registration'),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextButton(onPressed: (){}, child: Text('Register'))
          ],
        ),
      ),
    );
  }
}
