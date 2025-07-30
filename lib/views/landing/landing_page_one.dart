import 'package:flutter/material.dart';
import 'package:ovenly_pizza_app/constants/constants.dart';
import 'package:ovenly_pizza_app/views/landing/landing_page_two.dart';
import 'package:ovenly_pizza_app/widgets/my_text.dart';

class LandingPageOne extends StatefulWidget {
  const LandingPageOne({super.key});

  @override
  State<LandingPageOne> createState() => _LandingPageOneState();
}

class _LandingPageOneState extends State<LandingPageOne> {

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 3), () {
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPageTwo()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceHeight * 0.18, 
              width: deviceWidth * 0.18,
              child: Image.asset("assets/images/ovenly_logo.png"),
            ),
            MyText(text: "Ovenly", style: Constants.appTitleStyle(context)),
          ],
        ),
      ),
    );
  }
}