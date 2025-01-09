// ignore: file_names
import 'package:flutter/material.dart'; 

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Service Page Here..",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
