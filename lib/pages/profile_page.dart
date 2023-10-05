import 'package:easy_pay_new/components/profile_text_field.dart';
import 'package:flutter/material.dart';
import '../components/update_button.dart';

double width = 0.0;
double height = 0.0;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: width,
      height: height,
      color: const Color(0xFF161622),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade800),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: const AssetImage('assets/images/card_bg_1.jpg'),
                // Replace with your image
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  // Adjust opacity here (0.0 to 1.0)
                  BlendMode.darken,
                ),
              ),
            ),
            child: Icon(
              Icons.camera_alt,
              size: 40,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileTextField(
                  controller: firstNameController,
                  hintText: "First Name",
                  obscureText: false,
                  width: width / 2.5),
              const SizedBox(
                width: 10,
              ),
              ProfileTextField(
                  controller: lastNameController,
                  hintText: "Last Name",
                  obscureText: false,
                  width: width / 2.5)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ProfileTextField(
              controller: countryController,
              hintText: "Country",
              obscureText: false,
              width: width),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfileTextField(
                  controller: cityController,
                  hintText: "City",
                  obscureText: false,
                  width: width / 2.5),
              const SizedBox(
                width: 10,
              ),
              ProfileTextField(
                  controller: zipCodeController,
                  hintText: "Zip Code",
                  obscureText: false,
                  width: width / 2.5),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          UpdateButton(
            onTap: () {},
            btnText: 'Update Profile',
          ),
        ],
      ),
    );
  }
}
