import 'package:flutter/material.dart';

import '../../../../util/color.dart';

class NextButton extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback onNext;
  final String buttonText;

  const NextButton({required this.isLastPage, required this.onNext, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onNext,
      backgroundColor: ScreenColor.color1,
      label: Text(
        buttonText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ScreenColor.white),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}