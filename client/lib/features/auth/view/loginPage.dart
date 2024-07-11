// ignore_for_file: file_names
import 'package:client/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Appbar(
            logo: true,
            filter: false,
            search: true,
          ),
        ],
      ),
    );
  }
}
