import 'package:flutter/material.dart';
import 'package:kir/screens/auth/register/widgets/register_head_widget.dart';
import 'package:kir/screens/auth/register/widgets/register_form_widget.dart';
import 'package:kir/screens/auth/register/widgets/register_bottom_widget.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60),

                  RegisterHead(),
                  SizedBox(height: 40),

                  RegisterForm(),
                  SizedBox(height: 20),

                  RegisterBottom(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}