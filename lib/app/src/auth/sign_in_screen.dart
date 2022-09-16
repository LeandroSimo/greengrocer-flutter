import 'package:flutter/material.dart';
import 'package:greengrocer/app/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  CustomTextField(
                    icon: Icons.email,
                    label: 'E-mail',
                    hintText: 'exemplo@exemplo.com',
                  ),
                  CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    hintText: '',
                    isSecret: true,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
