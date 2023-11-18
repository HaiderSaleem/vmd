import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/constants.dart';

class Heading extends Text {
  Heading(
    String? data, {
    Key? key,
    Color color = AppColors.primaryTextColor,
    double fontSize = Constants.largeFontSize,
    FontWeight fontWeight = FontWeight.bold,
    FontStyle fontStyle = FontStyle.normal,
    TextAlign textAlign = TextAlign.center,
    String fontFamily = Constants.montserratFontFamily,
    TextOverflow? overflow,
    int? maxLines,
    double? letterSpacing,
    TextDecoration? decoration,
    List<Shadow> shadows = const [],
    bool isMultiLine = false,
  }) : super(
          isMultiLine ? (data ?? "").replaceAll('-', Constants.nonBreakingHyphen) : (data ?? ""),
          style: TextStyle(
              color: color,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
              fontFamily: fontFamily,
              decoration: decoration,
              shadows: shadows),
          overflow: overflow,
          textAlign: textAlign,
          maxLines: maxLines,
          key: key,
        );
}
