import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const Textfield(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder();
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        disabledBorder: inputBorder,
        hintText: hintText,
        filled: true,
        contentPadding: const EdgeInsets.all(16),
      ),
      obscureText: obscureText,
    );
  }
}
