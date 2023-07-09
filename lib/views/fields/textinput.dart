import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class TextInputC extends StatelessWidget {
  final TextEditingController controller;
  final String labeltext;
  final bool ifObscure;
  final IconData icon;

  const TextInputC({
    super.key,
    required this.controller,
    required this.labeltext,
    this.ifObscure = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labeltext,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,
            )),
      ),
      obscureText: ifObscure,
    );
  }
}
