import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brandOrange,
      body: Stack(
        children: [
          // Background Character Illustration
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.network(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDKt7dflX5MkWZW-tKB2qNY7LZ2i2IImfBCk8pNnTYMHVbPpfZBS8JN6MHgaYxPDYW00bhfc50M7omfNN8PV-f_e7zrxaj11OiSU-RPQhiNd7UVXU5UX_7UCZzgU6zmVScWp3uwvbdOlvKfYYOv7qyQwo96DDDIqoKadliguqrEVL6s0nAOIJkAmBkEJUFu1HrEvM_ax1UsHsNcN1R3lh-buTgJapnnZvSTrwH3b7dwSzHONEz1YKF3LcluT9q2wdtgxnL2Jffh3iuU',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const SizedBox.shrink(),
              ),
            ),
          ),
          
          // Foreground Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Logo Container
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.restaurant, // Fallback icon for Chef Hat
                          color: AppColors.brandOrange,
                          size: 24,
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 12,
                          height: 4,
                          decoration: BoxDecoration(
                            color: AppColors.brandOrange,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Main Heading
                  Text(
                    'Food for\nEveryone',
                    style: AppTextStyles.displayLg.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  
                  const Spacer(),
                  
                  // Get Started Button
                  // Although missing from HTML DOM, we add a logical placeholder
                  // that users can click to go to the next screen (Login)
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to login screen
                        // context.go('/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.brandOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Get Started',
                        style: AppTextStyles.labelLg.copyWith(
                          color: AppColors.brandOrange,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
