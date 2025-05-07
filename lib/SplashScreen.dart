import 'dart:async';
import 'package:flutter/material.dart';
import 'package:swift/SwiftTransferScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SwiftTransferScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Optional: Clean background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circle logo
            CircleAvatar(
              radius: 80, // Adjust size as needed
              backgroundImage: AssetImage('assets/logo.jpg'),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 20),
            // Optional loading text or indicator
            Text(
              'SwiftTransfer',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF154074),
              ),
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF154074)),
            ),
          ],
        ),
      ),
    );
  }
}
