import 'package:client/features/auth/textformfield.dart';
import 'package:client/features/auth/view/loginPage.dart';
import 'package:client/widgets/appbar.dart';
import 'package:client/widgets/commonbutton.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Appbar(logo: true, search: false, filter: false),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Align(
                      alignment:
                          size > 1080 ? Alignment.center : Alignment.centerLeft,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromRGBO(71, 26, 160, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const textformfield(
                    labeltext: "Name",
                    hintText: "Enter your Full Name",
                    icon: "assets/images/name.png",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const textformfield(
                    labeltext: "Email",
                    hintText: "Enter your email",
                    icon: "assets/images/email.png",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const textformfield(
                    labeltext: "Phone Number",
                    hintText: "Enter your Phone Number",
                    icon: "assets/images/Phone.png",
                    check: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const textformfield(
                    labeltext: "Password",
                    hintText: "Enter your password",
                    icon: "assets/images/password.png",
                    check: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const textformfield(
                    labeltext: "Confirm Password",
                    hintText: "Confirm your password",
                    icon: "assets/images/password.png",
                    check: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CommonButton(text: "Sign Up")),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginpage()),
                          );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
