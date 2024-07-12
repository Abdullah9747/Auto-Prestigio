import 'package:client/features/auth/view/LoginPage.dart';
import 'package:client/features/auth/view/signupPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Pristigio',
      home: const SignupPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(172, 99, 223, 1),
          primary: const Color.fromRGBO(172, 99, 223, 1),
        ),
        useMaterial3: true,
      ),
    );
  }
}
