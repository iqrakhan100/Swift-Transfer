import 'package:flutter/material.dart';
import 'package:swift/about.dart';

class ConfirmTransferDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirm Transfer Details',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF154074),
                ),
              ),
              SizedBox(height: 60),

              // TextField styled like the OutlinedButton
              TextField(
                decoration: InputDecoration(
                  hintText: 'Sending \$150',
                  hintStyle: TextStyle(color: Color(0xFF154074)),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: TextStyle(fontSize: 18, color: Color(0xFF154074)),
              ),
              SizedBox(height: 20,),
               TextField(
                decoration: InputDecoration(
                  hintText: 'Recipient: Fatou Sarr',
                  hintStyle: TextStyle(color: Color(0xFF154074)),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: TextStyle(fontSize: 18, color: Color(0xFF154074)),
              ),
              SizedBox(height: 20,),

 TextField(
                decoration: InputDecoration(
                  hintText: 'Phone: +220 123 4567',
                  hintStyle: TextStyle(color: Color(0xFF154074)),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: TextStyle(fontSize: 18, color: Color(0xFF154074)),
              ),
              SizedBox(height: 20,),

 TextField(
                decoration: InputDecoration(
                  hintText: 'They Receive: GMD 10,000',
                  hintStyle: TextStyle(color: Color(0xFF154074)),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: TextStyle(fontSize: 18, color: Color(0xFF154074)),
              ),
SizedBox(height: 20,),

 TextField(
                decoration: InputDecoration(
                  hintText: 'Fee: \$1.99 | GBP = XXX GMD',
                  hintStyle: TextStyle(color: Color(0xFF154074)),
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF154074), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                style: TextStyle(fontSize: 18, color: Color(0xFF154074)),
              ),
SizedBox(height: 20,),
               ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF154074),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Confirm and send',
                  style: TextStyle(fontSize: 18,color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Fully FCA Regulated',
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
