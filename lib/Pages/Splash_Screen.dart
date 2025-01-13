// import 'package:flutter/material.dart';
// import 'package:furnishhub/main.dart'; // Replace with your actual main screen

// class SplashScreenView extends StatefulWidget {
//   const SplashScreenView({super.key});

//   @override
//   State<SplashScreenView> createState() => _SplashScreenViewState();
// }

// class _SplashScreenViewState extends State<SplashScreenView> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 3), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => MainScreen(), // Replace with your main screen
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: const Color.fromARGB(255, 255, 255, 255),
//           child: Center(
//             child: Image.asset('assets/images/playstore.png'),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:furnishhub/main.dart'; // Replace with your actual main screen

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller and animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000), // Animation duration
    );

    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack, // Gives a "pop" effect
    );

    // Start the animation
    _animationController.forward();

    // Navigate to the next screen after a delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MainScreen(), // Replace with your main screen
        ),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xFF152244),
          child: Center(
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Image.asset('assets/images/playstore.png'),
            ),
          ),
        ),
      ),
    );
  }
}
