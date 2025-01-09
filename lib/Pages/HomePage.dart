import 'package:flutter/material.dart';
import 'Product.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // List of pages you want to display
  final List<Widget> _pages = [
    ProductPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/Page1.jpeg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Welcome to Furnish-Hub!  ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // Use PageView to show different pages
          Expanded(
            child: PageView(
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
