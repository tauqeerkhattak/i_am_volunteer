import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize, spacing;
  final bool? enableShadow;
  final FontWeight? weight;
  final String? family;
  final Color? color;
  const CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.spacing,
    this.enableShadow = false,
    this.color,
    this.weight,
    this.family,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(
        family ?? 'Inter',
        fontSize: fontSize,
        letterSpacing: spacing,
        fontWeight: weight,
        color: color,
        shadows: enableShadow!
            ? [
                Shadow(
                  offset: const Offset(15.0, 15.0),
                  blurRadius: 10.0,
                  color: Colors.black.withOpacity(0.2),
                ),
              ]
            : null,
      ),
    );
  }
}
