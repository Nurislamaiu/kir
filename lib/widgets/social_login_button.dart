import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/color.dart';

class SocialLoginButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const SocialLoginButton({
    Key? key,
    required this.iconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: ScreenColor.color1.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: SvgPicture.asset(iconPath, height: 24),
        ),
      ),
    );
  }
}