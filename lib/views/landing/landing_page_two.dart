import 'package:flutter/material.dart';
import 'package:ovenly_pizza_app/constants/constants.dart';
import 'package:ovenly_pizza_app/helpers/data_helper.dart';
import 'package:ovenly_pizza_app/widgets/custom_dropdown.dart';
import 'package:ovenly_pizza_app/widgets/my_text.dart';

class LandingPageTwo extends StatefulWidget {
  const LandingPageTwo({super.key});

  @override
  State<LandingPageTwo> createState() => _LandingPageTwoState();
}

class _LandingPageTwoState extends State<LandingPageTwo> {
  // pageview controller
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  late List pages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = DataHelper.landingDatas;
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Image.asset("assets/images/ovenly_logo.png"),
                    ),
                    MyText(text: "Ovenly", style: Constants.logoTitleStyle()),
                  ],
                ),
                const Spacer(),
                SizedBox(height: deviceHeight * 0.05, child: CustomDropdown()),
              ],
            ),

            // orta bölge gelecek, resimler ve metinler
            _buildPageView(deviceHeight),

            // buton bölgesi
            _buildButtonSection(deviceHeight, deviceWidth),
          ],
        ),
      ),
    );
  }

  Column _buildButtonSection(double deviceHeight, double deviceWidth) {
    return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: deviceHeight * 0.07,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        child: Text("Log in")
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: deviceHeight * 0.07,
                      child: OutlinedButton(
                        onPressed: (){}, 
                        child: Text("Sign me up")
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
  }

  Padding _buildPageView(double deviceHeight) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: deviceHeight * 0.42,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: pages.length,
                    onPageChanged: (value) {
                      setState(() {
                        _currentIndex = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      final page = pages[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              page["image"]!,
                              width: 300,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          MyText(
                            text: page["title"],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Constants.blackTone,
                          ),
                          const SizedBox(height: 10),
                          MyText(
                            text: page["desc"],
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            color: Constants.greyTone,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
                  ),
                ),
            
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pages.length, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: _currentIndex == index ? 10 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color:
                            _currentIndex == index
                                ? Constants.primaryColor
                                : Constants.lightGreyTone,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
  }
}
