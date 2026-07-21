import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4B3A), // Vibrant orange-red
      body: Stack(
        children: [
          // Background Image (Characters)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 250, // Push down to make room for header
            child: Image.asset(
              'assets/images/splash_bg.png',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          
          // Header content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.restaurant_menu, // Approximation for Chef Hat
                            color: Color(0xFFFF4B3A),
                            size: 32,
                          ),
                          const SizedBox(height: 4),
                          Container(
                            width: 12,
                            height: 4,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF4B3A),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Food for\nEveryone',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display', // Using default sans if missing
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      height: 0.9,
                      letterSpacing: -1.5,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
            // Get Started Button
            Positioned(
              left: 40,
              right: 40,
              bottom: 40,
              child: SizedBox(
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFFF4B3A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
