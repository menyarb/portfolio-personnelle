import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import the google_nav_bar package
import 'package:line_icons/line_icons.dart';
import 'contact_page.dart';
import 'exprience_page.dart';
import 'portfolio_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Track the selected tab index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            selectedIndex: _selectedIndex, // Set the selected index
            onTabChange: (index) {
              setState(() {
                _selectedIndex =
                    index; // Update the selected index when a tab is tapped
              });
            },
            rippleColor: Colors.grey[800] != null
                ? Colors.grey[800]!
                : Color.fromARGB(0, 13, 62, 236),

            hoverColor: Colors.grey[700] != null
                ? Colors.grey[700]!
                : Color.fromARGB(0, 6, 56, 238),

            haptic: true,
            tabBorderRadius: 15,
            tabActiveBorder:
                Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 1),
            tabBorder: Border.all(color: Colors.grey, width: 1),
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
            ],
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 900),
            gap: 8,
            color: Colors.grey[800],
            activeColor: Color.fromARGB(255, 220, 217, 221),
            iconSize: 24,
            tabBackgroundColor:
                Color.fromARGB(255, 237, 231, 238).withOpacity(0.1),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.clock, // Use 'heart' instead of 'heart_o'
                text: 'Exprience',
                onPressed: () {
                  // Naviguer vers la page de contact lorsque le bouton est pressé
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExperiencePage()),
                  );
                },
              ),
              GButton(
                icon: LineIcons.users,
                text: 'Search',
                onPressed: () {
                  // Naviguer vers la page de contact lorsque le bouton est pressé
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExperiencePage()),
                  );
                },
              ),
              GButton(
                icon: Icons.grid_on,
                text: 'Portfolio',
                onPressed: () {
                  // Naviguer vers la page de contact lorsque le bouton est pressé
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PortfolioPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
