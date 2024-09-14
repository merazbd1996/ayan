import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 16.0, // Horizontal space between tiles
          mainAxisSpacing: 16.0, // Vertical space between tiles
          children: <Widget>[
            DashboardTile(
              icon: Icons.person,
              label: 'Profile',
              onTap: () {
                // Add your navigation logic here
              },
            ),
            DashboardTile(
              icon: Icons.message,
              label: 'Messages',
              onTap: () {
                // Add your navigation logic here
              },
            ),
            DashboardTile(
              icon: Icons.settings,
              label: 'Settings',
              onTap: () {
                // Add your navigation logic here
              },
            ),
            DashboardTile(
              icon: Icons.notifications,
              label: 'Notifications',
              onTap: () {
                // Add your navigation logic here
              },
            ),
            DashboardTile(
              icon: Icons.account_balance,
              label: 'Accounts',
              onTap: () {
                // Add your navigation logic here
              },
            ),
            DashboardTile(
              icon: Icons.exit_to_app,
              label: 'Logout',
              onTap: () {
                // Add your logout logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() onTap;

  DashboardTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 48.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 16.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
