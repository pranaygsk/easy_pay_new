import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String signText;

  const MyButton({super.key, required this.onTap, required this.signText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.black
        ),
        child: Center(
          child: Text(signText,
          style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
