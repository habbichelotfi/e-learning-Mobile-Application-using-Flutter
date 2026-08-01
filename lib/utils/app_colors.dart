import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBlue = Color(0xFF6B8CFE);
  static const Color accentOrange = Color(0xFFF15536);
  static const Color darkBlue = Color(0xFF1565C0);
  static const Color lightGrey = Color(0xFFF5F7FA);
  static const Color textDark = Color(0xFF1A1C1E);
  static const Color textGrey = Color(0xFF707781);
  
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;

  static List<BoxShadow> softShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 15,
      offset: const Offset(0, 5),
    ),
  ];
}
