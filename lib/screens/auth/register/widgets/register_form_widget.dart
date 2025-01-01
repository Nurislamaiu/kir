import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kir/widgets/custom_text_field.dart';

import '../../../../util/color.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _register() {
    if (_formKey.currentState?.validate() ?? false) {
      // Валидация успешна
      print('Email: ${_emailController.text}');
      print('Password: ${_passwordController.text}');
      // Добавьте логику регистрации
    } else {
      // Валидация не прошла
      print('Validation failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            label: "Email",
            icon: Iconsax.sms,
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Введите email";
              }
              if (!RegExp(r"^[^@]+@[^@]+\.[^@]+").hasMatch(value)) {
                return "Введите корректный email";
              }
              return null;
            },
          ),
          SizedBox(height: 20),

          CustomTextField(
            label: "Пароль",
            icon: Iconsax.lock,
            isPassword: true,
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Введите пароль";
              }
              if (value.length < 6) {
                return "Пароль должен содержать минимум 6 символов";
              }
              return null;
            },
          ),
          SizedBox(height: 20),

          CustomTextField(
            label: "Подтвердите пароль",
            icon: Iconsax.lock,
            isPassword: true,
            controller: _confirmPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Подтвердите пароль";
              }
              if (value != _passwordController.text) {
                return "Пароли не совпадают";
              }
              return null;
            },
          ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: _register,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: ScreenColor.color1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text(
              "Зарегистрироваться",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}