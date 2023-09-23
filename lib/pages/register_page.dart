import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';

class RegisterPage extends StatefulWidget {



  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                  "Lets create an account for you",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(
                  height: 25,
                ),
                //UserName Text Field
                MyTextField(
                  controller: usernameController,
                  hintText: "User Name",
                  obscureText: false,
                ),

                const SizedBox(
                  height: 25,
                ),
                //Password text Field
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 25,
                ),

                //Sign In Button
                MyButton(onTap: signUpUser, signText: 'Sign Up',),
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
                //Google and Facebook SignUp Buttons
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
                const SizedBox(height: 25,),
                //Already have an account Login now
                GestureDetector(
                  onTap: (){
                    Navigator.popAndPushNamed(context, "/loginpage");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      Text(
                        "Login Now",
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

  void signUpUser() {
  }
}
