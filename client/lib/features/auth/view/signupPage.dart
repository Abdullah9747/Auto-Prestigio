import 'package:client/features/auth/textformfield.dart';
import 'package:client/widgets/appbar.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Appbar(
              logo: true,
              filter: false,
              search: false,
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
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
                        onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
