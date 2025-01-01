import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kir/util/color.dart';
import 'package:kir/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      // Валидация успешна
      print('Email: ${_emailController.text}');
      print('Password: ${_passwordController.text}');
      // Добавьте логику входа
      Navigator.pushNamed(context, '/navbar');
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
          // Email Field
          CustomTextField(
            label: "Номер телефона или email",
            icon: Iconsax.user,
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Введите номер телефона или email";
              }
              // Пример базовой проверки email
              if (!RegExp(r"^[^@]+@[^@]+\.[^@]+").hasMatch(value)) {
                return "Введите корректный email";
              }
              return null;
            },
          ),
          SizedBox(height: 20),

          // Password Field
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

          // Submit Button
          ElevatedButton(
            onPressed: _submit,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: ScreenColor.color1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text("Войти", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}