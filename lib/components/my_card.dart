import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 200,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade800),
          image: const DecorationImage(
            image: AssetImage("assets/images/card_bg_1.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$12,345",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Image(
                  image: AssetImage(AnyLogo.tech.masterCard.path),
                  height: 50,
                ),
              ],
            ),
            //Card Number
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1234 **** **** 7890",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),Text(
                      "12/34",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pranay GSK",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
