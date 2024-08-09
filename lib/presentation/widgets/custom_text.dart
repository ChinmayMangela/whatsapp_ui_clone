import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.textColor = Colors.white, required this.textSize, required this.isBoldFont});

  final String text;
  final Color textColor;
  final double textSize;
  final bool isBoldFont;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: textColor,
        fontSize: textSize,
        fontWeight: isBoldFont ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
