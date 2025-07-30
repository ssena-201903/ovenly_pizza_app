import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Constants {
  static const String appName = 'Ovenly';

  static const Color primaryColor = Color(0xFFB55638);
  static const Color whiteTone = Color(0xFFF8F8F8);
  static const Color blackTone = Color(0xFF0F0E0D);
  static const Color greyTone = Color(0xFF868686);
  static const Color lightGreyTone = Color(0xffD9D9D9);

  static TextStyle appTitleStyle(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return GoogleFonts.fredoka(
      fontSize: screenWidth * 0.08,
      fontWeight: FontWeight.w600,
      color: const Color(0xff444744),
    );
  }

  static TextStyle logoTitleStyle() {
    return GoogleFonts.fredoka(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: const Color(0xff444744),
    );
  }

  static final TextStyle bodyTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: greyTone,
  );

  static final borderRadius = BorderRadius.circular(24);
}
