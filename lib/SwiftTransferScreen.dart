import 'package:flutter/material.dart';
import 'package:swift/about.dart';


class SwiftTransferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SwiftTransfer',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF154074),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Fast, Secure, and Affordable Money Transfers.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF154074),
                ),
              ),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF154074),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              OutlinedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xFF154074)),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Learn More',
                  style: TextStyle(fontSize: 18, color: Color(0xFF154074)),
                ),
              ),
              SizedBox(height: 30),
              Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(color: Color(0xFF154074)),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(color: Color(0xFF154074)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'FCA Regulated  |  Secure Transactions  |  Powered by Trust',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Color(0xFF154074)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
