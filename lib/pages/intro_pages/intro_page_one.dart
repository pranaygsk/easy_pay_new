import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageOne extends StatefulWidget {
  const IntroPageOne({super.key});

  @override
  State<IntroPageOne> createState() => _IntroPageOneState();
}

class _IntroPageOneState extends State<IntroPageOne>
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
            "Welcome to Easy Pay!",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.black),
          ),
          const SizedBox(height: 50,),
          Lottie.asset(
            'assets/lottie/intro_page_one.json',
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
