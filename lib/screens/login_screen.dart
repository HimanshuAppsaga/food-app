import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // Header Card
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  // Logo
                  Image.network(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBzHLMK1nhO_h1WwNBQCCCy7XJX5Sfr76P7UA8f0QM6gg33M6hnT1zrzN2wgfUlSAZqi30a4k7tiaadhxGzYAry8F3rGFJO4pPKbl49u-B6lgS80znTbkm3_leUEax6mZjgyGm5ZaMSMvUJUzeJ4QBEv7vZmPGopvMRNZmGMKHUOaBWUM6SG0EHfNRXV_RgnpwRIqQCcjPpXqfMKIElVWPy2ZY_Os31PJTekXWLI5e8jo_499gtDucX-LrIOxYPsxx_zS-gYRvC3H5v',
                    height: 160,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.restaurant, size: 100, color: AppColors.brandOrange),
                  ),
                  const SizedBox(height: 48),
                  // Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Login Tab
                      Column(
                        children: [
                          Text(
                            'Login',
                            style: AppTextStyles.labelLg.copyWith(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            height: 4,
                            width: 120, // Approximate width of the tab indicator
                            decoration: BoxDecoration(
                              color: AppColors.brandOrange,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ],
                      ),
                      // Sign-up Tab
                      Column(
                        children: [
                          Text(
                            'Sign-up',
                            style: AppTextStyles.labelLg.copyWith(
                              fontSize: 18,
                              color: AppColors.greyMid,
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // Form Section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Email Field
                  Text(
                    'Email address',
                    style: AppTextStyles.labelSm.copyWith(
                      color: AppColors.greyMid,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    initialValue: 'Dosamarvis@gmail.com',
                    style: AppTextStyles.bodyLg.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.brandOrange, width: 2),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  // Password Field
                  Text(
                    'Password',
                    style: AppTextStyles.labelSm.copyWith(
                      color: AppColors.greyMid,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    initialValue: '********',
                    obscureText: true,
                    style: AppTextStyles.bodyLg.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 4,
                    ),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.brandOrange, width: 2),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black87),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Forgot Password
                  Text(
                    'Forgot passcode?',
                    style: AppTextStyles.labelLg.copyWith(
                      color: AppColors.brandOrange,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Login Button
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.brandOrange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Login',
                  style: AppTextStyles.labelLg.copyWith(
                    color: Colors.white,
                    fontSize: 20,
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

