import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final bool isSecret;
  final IconData icon;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    this.isSecret = false,
    required this.icon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() => isObscure = !isObscure);
                    },
                    icon: Icon(
                      isObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                  )
                : null,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            hintText: widget.hintText,
            labelText: widget.label),
      ),
    );
  }
}
