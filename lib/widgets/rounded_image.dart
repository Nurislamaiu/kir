import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../util/color.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = false,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor = ScreenColor.white,
    this.isNetworkImage = false,
    this.borderRadius = 12.0,
    required this.title,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final String title;

  @override
  Widget build(BuildContext context) {
    String titleUpperCase = title.toUpperCase();
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 5),
      child: Stack(
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Container(
              width: width,
              height: height,
              padding: padding,
              decoration: BoxDecoration(
                border: border,
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: ClipRRect(
                borderRadius: applyImageRadius
                    ? BorderRadius.circular(borderRadius)
                    : BorderRadius.zero,
                child: Image(
                  fit: fit,
                  image: isNetworkImage
                      ? NetworkImage(imageUrl)
                      : AssetImage(imageUrl) as ImageProvider,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Text(
                titleUpperCase,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: GoogleFonts.cabin().fontFamily,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}