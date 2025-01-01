import 'package:flutter/material.dart';

class LoginHead extends StatelessWidget {
  const LoginHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Logo
        Center(child: Image.asset('assets/images/logo.png', height: 100)),
        SizedBox(height: 30),
        // Title and Subtitle
        Text(
          "Добро пожаловать",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Введите данные для входа",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}