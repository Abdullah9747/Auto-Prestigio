import 'package:client/features/auth/textformfield.dart';
import 'package:client/features/auth/view/loginPage.dart';
import 'package:client/widgets/appbar.dart';
import 'package:client/widgets/commonbutton.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _signupkey = GlobalKey<FormState>();

  final TextEditingController _namecontroller = TextEditingController();

  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _phonecontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  final TextEditingController _confirmontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Appbar(logo: true, search: false, filter: false),
          Form(
            key: _signupkey,
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Align(
                        alignment: size > 1080
                            ? Alignment.center
                            : Alignment.centerLeft,
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
                    textformfield(
                      controller: _namecontroller,
                      labeltext: "Name",
                      hintText: "Enter your Full Name",
                      icon: "assets/images/name.png",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
                          return 'Name can only contain alphanumeric characters';
                        }
                        if (RegExp(r'^[0-9]').hasMatch(value)) {
                          return 'Name cannot start with a numeric character';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    textformfield(
                      controller: _emailcontroller,
                      labeltext: "Email",
                      hintText: "Enter your email",
                      icon: "assets/images/email.png",
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
                      labeltext: "Phone",
                      hintText: "Phone number",
                      icon: "assets/images/Phone.png",
                      controller: _phonecontroller,
                      validator: (value) {
                        final RegExp phoneRegExp = RegExp(r'^\+?[0-9]{11}$');
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        } else if (!phoneRegExp.hasMatch(value)) {
                          return 'Please enter a valid 11 digit phone number ';
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
                    const SizedBox(
                      height: 20,
                    ),
                    textformfield(
                      controller: _confirmontroller,
                      labeltext: "Confirm Password",
                      hintText: "Confirm your password",
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CommonButton(
                          text: "Sign Up",
                          onPressed: () {
                            if (_signupkey.currentState!.validate()) {
                              print(_phonecontroller.text);
                            }
                          }),
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
          ),
        ],
      ),
    );
  }
}
