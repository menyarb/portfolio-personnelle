import 'package:flutter/material.dart';
import '../menu/drawer.widget.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('Portfolio'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            _buildPortfolioItem(
              context,
              name: 'Project 1',
              description: 'Description for Project 1',
            ),
            _buildPortfolioItem(
              context,
              name: 'Project 2',
              description: 'Description for Project 2',
            ),
            _buildPortfolioItem(
              context,
              name: 'Project 3',
              description: 'Description for Project 3',
            ),
            // Add more portfolio items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildPortfolioItem(BuildContext context,
      {String name = '', String description = ''}) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
