import 'package:flutter/material.dart';

class RegisterHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/logo.png', height: 100)),
        SizedBox(height: 30),
        Text(
          "Регистрация",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Введите данные для создания аккаунта",
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