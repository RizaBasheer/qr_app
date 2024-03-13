import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_outlined,color: Colors.white,size: 60),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child:QrImage(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
