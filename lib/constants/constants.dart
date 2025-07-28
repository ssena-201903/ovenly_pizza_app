import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'Ovenly';

  static const Color primaryColor = Color(0xFFB55638);
  static const Color whiteTone = Color(0xFFF8F8F8);
  static const Color blackTone = Color(0xFF0F0E0D);
  static const Color greyTone = Color(0xFF868686);

  static final TextStyle baseFredokaStyle = GoogleFonts.fredoka(
    fontWeight: FontWeight.normal,
    color: Color(0xff444744),
  );

  static final TextStyle appTitleStyle = baseFredokaStyle.copyWith(
    fontSize: 40,
  );

  static final TextStyle logoTitleStyle = baseFredokaStyle.copyWith(
    fontSize: 16,
  );

  static final TextStyle pageTitleStyle = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: blackTone,
  );

  static final TextStyle bodyTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: greyTone,
  );

  
}
