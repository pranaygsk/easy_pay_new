import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageTwo extends StatefulWidget {
  const IntroPageTwo({super.key});

  @override
  State<IntroPageTwo> createState() => _IntroPageTwoState();
}

class _IntroPageTwoState extends State<IntroPageTwo>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Your Digital Payment Companion",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Lottie.asset(
            'assets/lottie/intro_page_two.json',
            controller: animationController,
            onLoaded: (composition) {
              animationController
                ..duration = composition.duration
                ..forward();
            },
          ),
        ],
      ),
    );
  }
}
