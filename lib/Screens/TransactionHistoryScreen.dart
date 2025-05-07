import 'package:flutter/material.dart';
import 'package:swift/Screens/AppDrawer.dart';
import 'TrackTransactionScreen.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});
  static const Color primaryColor = Color(0xFF154074);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Transactions History'),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              "Days Range",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: primaryColor,
              ),
            ),
            const SizedBox(height: 6),
            DropdownButtonFormField<String>(
              value: "Last 7 Days",
              items: const [
                DropdownMenuItem(
                    value: "Last 7 Days", child: Text("Last 7 Days")),
                DropdownMenuItem(
                    value: "Last 30 Days", child: Text("Last 30 Days")),
                DropdownMenuItem(
                    value: "Last 60 Days", child: Text("Last 60 Days")),
              ],
              onChanged: (value) {},
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      title: Text(
                        index == 0 ? "MUHAMMAD AHMED" : "ABCDETY ABCD",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      subtitle: const Text("10 Apr, 2025 10:35:29 PM"),
                      trailing: Text(
                        index == 0 ? "\$87,780.00" : "\$5070.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
