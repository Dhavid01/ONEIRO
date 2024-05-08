// ignore_for_file: prefer_equal_for_default_values, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:oneiro/core/utils/textstyles.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool multiText;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final Color? color;
  final bool centered;
  final int? maxLines;
  final double? fontSize;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;

  AppText.headingbold(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.centered = false,
    this.color,
    this.maxLines,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = headingbold.copyWith(
            color: color,
            height: height,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);

  AppText.heading500(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = heading500.copyWith(
            color: color,
            height: height,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);
  AppText.heading800(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = heading800.copyWith(
            color: color,
            height: height,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);
  AppText.heading900(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = heading900.copyWith(
            color: color,
            height: height,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);

  AppText.body300(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = body300.copyWith(
            color: color,
            height: height,
            letterSpacing: letterSpacing,
            fontSize: fontSize,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);
  AppText.body400(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = body400.copyWith(
            color: color,
            height: height,
            letterSpacing: letterSpacing,
            fontSize: fontSize,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);

  AppText.button600(
    this.text, {
    Key? key,
    this.multiText = true,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.maxLines,
    this.centered = false,
    this.textAlign,
    this.wordSpacing,
    this.height,
    this.letterSpacing,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
  }) : style = button600.copyWith(
            color: color,
            height: height,
            letterSpacing: letterSpacing,
            fontSize: fontSize,
            fontStyle: fontStyle,
            wordSpacing: wordSpacing,
            fontWeight: fontWeight);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: multiText || maxLines != null ? maxLines ?? 9999999999 : 1,
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,
      style: style,
    );
  }
}
