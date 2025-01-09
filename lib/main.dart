import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/Product.dart';
import 'Pages/Profile.dart';
import 'Pages/Menu.dart';
import 'Pages/Services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  // List of pages to navigate between
  final List<Widget> _pages = [
    Homepage(),
    ProductPage(),
    Profile(),
    MenuPage(),
    ServicePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index:
            _currentIndex, // IndexedStack will show the page based on this index
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print("Selected index: $_currentIndex"); // Debugging log
          });
        },
        backgroundColor: Colors.blue, // Background color for visibility
        selectedItemColor:
            const Color.fromARGB(255, 201, 92, 45), // Color for selected item
        unselectedItemColor: const Color.fromARGB(
            255, 201, 92, 45), // Color for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services_sharp),
            label: 'Service',
          ),
        ],
      ),
    );
  }
}
