import 'package:flutter/material.dart';

import 'TrackTransactionScreen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  static const Color primaryColor = Color(0xFF154074);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(color: primaryColor),
              ),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.circle),
                ),
                const SizedBox(width: 10),
                Text(
                  "SwiftTransfer",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: primaryColor),
            title: const Text("HOME"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.track_changes, color: primaryColor),
            title: const Text("Track Transaction"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TrackTransactionScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.history, color: primaryColor),
            title: const Text("History of Transaction"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
