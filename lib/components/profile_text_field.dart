import 'package:flutter/material.dart';
class ProfileTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final double width;

  const ProfileTextField({super.key, required this.controller, required this.hintText, required this.obscureText, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: width,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(color: Color(0xFF00B899))),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500],height: 1.0)),
        obscureText: false,
      ),
    );
  }
}
