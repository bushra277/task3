import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final Widget? prefixIcon;
  final double borderRadius;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.text,
    this.prefixIcon,
    this.borderRadius = 15 
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius)
        )
      ),
    );
  }
}