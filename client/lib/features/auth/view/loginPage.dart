// ignore_for_file: file_names
import 'package:client/features/auth/textformfield.dart';
import 'package:client/features/auth/view/signupPage.dart';
import 'package:client/widgets/appbar.dart';
import 'package:client/widgets/commonbutton.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  final GlobalKey<FormState> _loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Appbar(
            logo: true,
            filter: false,
            search: false,
          ),
          Form(
            key: _loginkey,
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromRGBO(71, 26, 160, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textformfield(
                      controller: _emailcontroller,
                      labeltext: "Email",
                      hintText: "Enter your email",
                      icon: "assets/images/name.png",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        // Regular expression for validating an email
                        final emailRegExp =
                            RegExp(r'^[a-zA-Z0-9._%+-]+@gmail.com$');
                        if (!emailRegExp.hasMatch(value)) {
                          return 'Please enter a valid email e.g. abc@gmail.com';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textformfield(
                      controller: _passwordcontroller,
                      labeltext: "Password",
                      hintText: "Enter your password",
                      icon: "assets/images/password.png",
                      check: true,
                      validator: (value) {
                        final RegExp passwordRegExp = RegExp(
                            r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (!passwordRegExp.hasMatch(value)) {
                          return 'Password must inlcude 8 char,capital,small,numbers,special characters';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: size > 1080
                          ? Alignment.center
                          : Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CommonButton(
                        text: "Sign In",
                        onPressed: () {
                          if (_loginkey.currentState!.validate()) {
                            print("Form submitted");
                            print(_emailcontroller.text);
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: size > 1080 ? size * 0.25 : size * .60,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.png',
                                width: 50,
                              ),
                              const Text('or Sign In with Google')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()),
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
