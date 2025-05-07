import 'package:flutter/material.dart';
import 'AppDrawer.dart'; // Assuming AppDrawer.dart is in the same directory

class TrackTransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text('Track Transaction'),
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 100.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '123',
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle search action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF154074),
                  ),
                  child: Text('Search'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF154074)),
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Transaction Status',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF154074),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _buildInfoRow('Send Amount', '100\$'),
                  _buildInfoRow('Phone No', '123456'),
                  _buildInfoRow('Receipt Name', 'user'),
                  _buildInfoRow('Fee', '\$6.9'),
                  _buildInfoRow('Status', 'reject'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 8.0),
          Text(':'),
          SizedBox(width: 8.0),
          Text(value),
        ],
      ),
    );
  }
}
