import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ui_app/profile.dart';
import 'front.dart';

class MobileScan extends StatefulWidget {
  const MobileScan({Key? key}) : super(key: key);

  @override
  State<MobileScan> createState() => _MobileScanState();
}

class _MobileScanState extends State<MobileScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: MobileScanner(
                allowDuplicates: false,
                onDetect: ((barcode, args) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ));
                }),
              ),
            ),
            TextButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));},
                style:
                    TextButton.styleFrom(side: BorderSide(color: Colors.white)),
                child: Text('Go',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
