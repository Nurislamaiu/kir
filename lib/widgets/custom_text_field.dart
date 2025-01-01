import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kir/util/color.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.icon,
    this.isPassword = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      validator: widget.validator,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyle(color: ScreenColor.color1),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(widget.icon, color: ScreenColor.color1),
        suffixIcon: widget.isPassword
            ? GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Iconsax.eye : Iconsax.eye_slash,
            color: ScreenColor.color1,
          ),
        )
            : null,
      ),
    );
  }
}