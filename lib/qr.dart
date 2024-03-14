import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ui_app/mobilescan.dart';
import 'package:ui_app/profile.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_circle_outlined, color: Colors.white, size: 60),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.white,
                child: QrImageView(
                  data: '1234567890',
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
              SizedBox(height: 20,),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MobileScan()));
                  },
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white ),
                  ),
                  child: Text(
                    'Scan',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MobileScan()));
                  },
                  style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.white ),
                  ),
                  child: Text(
                    'pass',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
