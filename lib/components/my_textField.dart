import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String txtHint;
  final bool txtObsure;
  final TextEditingController controller;

  const MyTextfield({
    super.key,
    required this.txtHint,
    required this.txtObsure,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        hintText: txtHint,
      ),
      obscureText: txtObsure,
    );
  }
}
