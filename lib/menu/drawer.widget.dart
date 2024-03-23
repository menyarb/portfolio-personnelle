import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences

class DrawerWidget extends StatelessWidget {
  late SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Menyar'),
            accountEmail: Text('menyarbenali@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                ),
              ),
            ),
          ),
          Divider(height: 4, color: Colors.blue),
          ListTile(
            title: Text('Accueil', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.home, color: Colors.blue),
            trailing: Icon(Icons.arrow_right, color: Colors.blue),
            onTap: () {
              // Navigate to the home screen
              Navigator.pop(context);
              Navigator.pushNamed(context, "/HomePage");
            },
          ),
          Divider(height: 4, color: Colors.blue),
          ListTile(
            title: Text('Déconnexion', style: TextStyle(fontSize: 22)),
            leading: Icon(Icons.logout, color: Colors.blue),
            trailing: Icon(Icons.arrow_right, color: Colors.blue),
            onTap: () async {
              prefs = await SharedPreferences.getInstance();
              prefs.setBool("connecte", false);
              // Navigate to the authentication screen and remove all previous routes
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/authentification',
                (route) => false,
              );
            },
          ),
          Divider(height: 4, color: Colors.blue),
        ],
      ),
    );
  }
}
