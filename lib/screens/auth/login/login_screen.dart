import 'package:flutter/material.dart';
import 'package:kir/screens/auth/login/widgets/login_bottom_widget.dart';
import 'package:kir/screens/auth/login/widgets/login_form_widget.dart';
import 'package:kir/screens/auth/login/widgets/login_head_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60),

                LoginHead(),
                SizedBox(height: 40),

                LoginForm(),
                SizedBox(height: 20),

                LoginBottom(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}