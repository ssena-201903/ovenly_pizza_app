import 'package:flutter/material.dart';
import 'package:ovenly_pizza_app/constants/constants.dart';
// import 'package:ovenly_pizza_app/views/landing/landing_page_one.dart';
import 'package:ovenly_pizza_app/views/landing/landing_page_two.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Constants.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: Constants.borderRadius,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Constants.primaryColor,
            backgroundColor: Constants.whiteTone,
            shape: RoundedRectangleBorder(
              borderRadius: Constants.borderRadius,
            ),
            side: BorderSide.none
          ),
        ),
      ),
      home: LandingPageTwo(),
    );
  }
}