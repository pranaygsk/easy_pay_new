import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String email;
  final int phoneNum;
  final ImageProvider? imagePath;

  const ContactTile({
    super.key,
    required this.name,
    required this.email,
    required this.phoneNum,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Circular Contact Image
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imagePath ??
                    const AssetImage('assets/images/profile_pic.png'),
                // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0), // Spacing between image and text
          // Contact Name and Email
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.grey.shade400),
                ),
                Text(
                  email,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16.0), // Spacing between text and icons
          // Right Side Icons
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: const Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.green,
                  size: 30.0,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: const Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.red,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
