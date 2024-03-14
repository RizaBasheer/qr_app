import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Text(''),
          TextButton(onPressed: (){}, child: Text(''))
        ],
      ),
    );
  }
}
