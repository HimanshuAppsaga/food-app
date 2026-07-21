import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors
  static const Color primary = Color(0xFFB51C00); // Main CTA, active tab indicator
  static const Color onPrimary = Colors.white;
  
  static const Color primaryContainer = Color(0xFFDC3214);
  static const Color onPrimaryContainer = Color(0xFFFFFBFF);

  // Background and Surface
  static const Color background = Color(0xFFF9F9F9); // Using #f9f9f9 as base background
  static const Color onBackground = Color(0xFF1B1B1B);

  static const Color surface = Color(0xFFFFFFFF); // Pure white for cards/inputs
  static const Color onSurface = Color(0xFF1B1B1B);
  
  static const Color surfaceVariant = Color(0xFFE2E2E2);
  static const Color onSurfaceVariant = Color(0xFF5C403A);

  // Secondary
  static const Color secondary = Color(0xFF5E5E5F);
  static const Color onSecondary = Colors.white;
  static const Color secondaryBackground = Color(0xFFF2F2F2); // From DESIGN.md

  // Neutral / Gray shades
  static const Color greyLight = Color(0xFFEFEEEE); // Search bar background
  static const Color greyMid = Color(0xFF9A9A9D); // Secondary body text

  // Error
  static const Color error = Color(0xFFBA1A1A);
  static const Color onError = Colors.white;
  
  // Custom interactive
  static const Color brandOrange = Color(0xFFFF4B2B); // High saturation orange-red for CTAs
}
