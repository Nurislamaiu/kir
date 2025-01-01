import 'package:flutter/material.dart';

class RegisterBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Уже есть аккаунт?",
          style: TextStyle(color: Colors.grey[700]),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Возврат на экран входа
          },
          child: Text(
            "Войти",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}