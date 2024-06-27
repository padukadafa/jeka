import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
class ReuseableText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextDecoration? textDecoration;
  final double? height;
  final int? maxLines;

  const ReuseableText(
    this.text, {
    super.key,
    this.color,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.textAlign,
    this.textDecoration,
    this.height,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.sourceSans3(
        color: color ?? Theme.of(context).colorScheme.onSurface,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: textDecoration,
        decorationColor: color,
        height: height,
      ),
      // overflow: TextOverflow.ellipsis,
    );
  }
}
