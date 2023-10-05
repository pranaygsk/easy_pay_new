import 'package:easy_pay_new/components/my_button.dart';
import 'package:easy_pay_new/components/my_textfield.dart';
import 'package:easy_pay_new/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                const Image(
                  image: AssetImage("assets/logos/easy_pay_logo.png"),
                  height: 125,
                  width: 125,
                ),
                const SizedBox(
                  height: 25,
                ),
                //Welcome Back Text
                Text(
                  "Welcome back you\'ve been missed!",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),
                const SizedBox(
                  height: 25,
                ),
                //UserName Text Field
                MyTextField(
                  controller: usernameController,
                  hintText: "Enter User Name",
                  obscureText: false,
                ),

                const SizedBox(
                  height: 25,
                ),
                //Password text Field
                MyTextField(
                  controller: passwordController,
                  hintText: "Enter Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                //Forgot Password
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Sign In Button
                MyButton(
                  onTap: signUserIn,
                  signText: 'Sign In',
                ),
                const SizedBox(
                  height: 30,
                ),

                //or Continue with
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Or Continue With")),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),
                //Google and Facebook Signin Buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: "assets/logos/google.png"),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(imagePath: "assets/logos/facebook.png"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                //Not a member? register now
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/registerpage");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member? "),
                      Text(
                        "Register Now",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUserIn() {
    Navigator.popAndPushNamed(context, "/homepage");
  }
}
