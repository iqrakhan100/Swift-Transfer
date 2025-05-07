import 'package:flutter/material.dart';
import 'package:swift/How.dart';


class Why extends StatelessWidget {
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
              'Why Choose Us',
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>How()));

              },
              child: Text(
                'Trusted and Transparent',
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
              'assets/image2.png', // <-- Make sure to add your image in assets
              height: 250,
            ),
            SizedBox(height: 30),
            Text(
              'Full FCA Regulated. Transparent fee.\nno hidden costs. Your money is \nproteted from start to finish',
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
