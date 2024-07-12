import 'package:flutter/material.dart';

// ignore: camel_case_types
class textformfield extends StatelessWidget {
  final String labeltext;
  final String hintText;
  final String icon;
  final bool check;
  const textformfield({
    super.key,
    required this.labeltext,
    required this.hintText,
    required this.icon,
    this.check = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16)
          .copyWith(top: 0),
      child: SizedBox(
        width: size > 1080 ? (size * 0.35) : double.infinity,
        child: TextFormField(
          obscureText: check,
          decoration: InputDecoration(
            labelText: labeltext,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(icon),
            ),
          ),
        ),
      ),
    );
  }
}
