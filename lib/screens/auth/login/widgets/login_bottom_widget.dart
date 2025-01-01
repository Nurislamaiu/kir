import 'package:flutter/material.dart';

import '../../../../widgets/social_login_button.dart';

class LoginBottom extends StatelessWidget {
  const LoginBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Register Link
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Нет аккаунта?",
              style: TextStyle(color: Colors.grey[700]),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              }, // Registration screen
              child: Text(
                "Регистрация",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        // Social Login
        Text(
          "Или войдите с помощью:",
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialLoginButton(iconPath: 'assets/icons/google.svg', onTap: () {}),
            SizedBox(width: 20),
            SocialLoginButton(iconPath: 'assets/icons/apple.svg', onTap: () {}),
          ],
        ),
      ],
    );
  }
}
