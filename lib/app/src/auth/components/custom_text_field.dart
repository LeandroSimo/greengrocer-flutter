import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isObscure;
  final IconData icon;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.isObscure = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            hintText: hintText,
            labelText: label),
      ),
    );
  }
}
