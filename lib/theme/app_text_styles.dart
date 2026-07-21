import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get _baseFont => GoogleFonts.beVietnamPro();

  static TextStyle displayLg = _baseFont.copyWith(
    fontSize: 65,
    fontWeight: FontWeight.w800,
    height: 1.1,
    letterSpacing: -1,
  );

  static TextStyle headlineLg = _baseFont.copyWith(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static TextStyle headlineLgMobile = _baseFont.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static TextStyle headlineMd = _baseFont.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  static TextStyle bodyLg = _baseFont.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static TextStyle bodySm = _baseFont.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.greyMid,
  );

  static TextStyle labelLg = _baseFont.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    height: 1.0,
  );

  static TextStyle labelSm = _baseFont.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.0,
  );
  
  // Price Labels (Primary color, Semi-Bold)
  static TextStyle priceLabel = _baseFont.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.brandOrange,
  );
}
