import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Furnish-Hub"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home_max_sharp),
              title: const Text("HomePage"),
            ),
            ListTile(
              leading: const Icon(Icons.person_2_sharp),
              title: const Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits),
              title: Text("Product"),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/Page1.jpeg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Welcome to Furnish-Hub!  ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
