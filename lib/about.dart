import 'package:flutter/material.dart';
import 'package:swift/Why.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About SwiftTransfer',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF154074),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Why()));

              },
              child: Text(
                'Send money safely to\nfamily and friends',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF154074),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/image1.png', // <-- Make sure to add your image in assets
              height: 250,
            ),
            SizedBox(height: 30),
            Text(
              'SwiftTransfer makes sending money\nfast, secure, and affordable -- straight\nfrom your phone',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF154074),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}