import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Menu', style: GoogleFonts.poppins()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular Profile Image
            CircleAvatar(
              radius: 50.0,
              backgroundImage:
                  NetworkImage('https://i.postimg.cc/cCsYDjvj/user-2.png'),
              // Placeholder for when image fails to load
              child: Icon(Icons.person, size: 50.0),
            ),
            SizedBox(height: 20),
            // List of Options
            Expanded(
              child: ListView(
                children: [
                  _buildListTile(Icons.account_circle, 'My Account'),
                  SizedBox(height: 15),
                  _buildListTile(Icons.notifications, 'Notifications'),
                  SizedBox(height: 15),
                  _buildListTile(Icons.settings, 'Settings'),
                  SizedBox(height: 15),
                  _buildListTile(Icons.help, 'Help Center'),
                  SizedBox(height: 15),
                  _buildListTile(Icons.logout, 'Logout'),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: GoogleFonts.poppins()),
      onTap: () {
        // Handle tap
      },
    );
  }
}
