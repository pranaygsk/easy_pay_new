import 'package:easy_pay_new/pages/intro_pages/intro_page_one.dart';
import 'package:easy_pay_new/pages/intro_pages/intro_page_three.dart';
import 'package:easy_pay_new/pages/intro_pages/intro_page_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //controller for dot indicator
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //PageView
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          //Dot Indicator
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Skip
                onLastPage
                    ? const Text("          ")
                    : GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                //Dot Indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                //Next or Done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(context, '/loginpage');
                        },
                        child: const Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(
                              milliseconds: 400,
                            ),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
