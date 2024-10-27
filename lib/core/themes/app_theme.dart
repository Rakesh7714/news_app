import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/constant/app_colors.dart';

class AppTheme {
  AppTheme._();
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primarycolor),
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.secondarycolor),
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
