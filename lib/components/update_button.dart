import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  final Function()? onTap;
  final String btnText;

  const UpdateButton({super.key, required this.onTap, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25.0),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xFF00B899)
        ),
        child: Center(
          child: Text(btnText,
            style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
