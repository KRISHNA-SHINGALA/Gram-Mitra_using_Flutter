import 'package:flutter/material.dart';

class AppColors {
  static const green = Color(0xFF064B38);
  static const greenDark = Color(0xFF003526);
  static const mint = Color(0xFFB8F2D8);
  static const mintLight = Color(0xFFE6F8F0);
  static const background = Color(0xFFF5F6FF);
  static const field = Color(0xFFEDF1FF);
  static const gold = Color(0xFFFFD978);
  static const text = Color(0xFF18252B);
  static const muted = Color(0xFF6F7B82);
  static const red = Color(0xFFB42318);
}

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.green,
      primary: AppColors.green, secondary: AppColors.mint,
      surface: Colors.white, error: AppColors.red),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background, foregroundColor: AppColors.greenDark,
      elevation: 0, centerTitle: false,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true, fillColor: AppColors.field,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: AppColors.green, width: 1.5)),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: const BorderSide(color: AppColors.red)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.greenDark, foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(52), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    )),
    cardTheme: CardThemeData(color: Colors.white, elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
  );
}
