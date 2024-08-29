import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    this.suffixIcon,
  });

  final Icon prefixIcon;
  final String labelText;
  final Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:
            InputDecoration(prefixIcon: prefixIcon, labelText: labelText));
  }
}
