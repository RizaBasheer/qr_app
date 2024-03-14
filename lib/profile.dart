import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/3029699/pexels-photo-3029699.jpeg'),
              radius: 70,
            ),
            Text(
              'Anne Mary',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,fontWeight: FontWeight.bold
                  
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '9754964367',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'anne12@gmail.com',
                    style: TextStyle(color: Colors.teal),
                  ),
                ],
              ),
              decoration: BoxDecoration(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
