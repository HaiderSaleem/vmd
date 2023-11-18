import 'package:flutter/material.dart';
import 'package:vmd/utils/text.dart';

import 'constants.dart';

abstract class Button extends StatelessWidget {
  final void Function()? onTap;

  const Button(this.onTap, {Key? key}) : super(key: key);
}

class ButtonSecondary extends Button {
  final void Function()? onIconTap;
  final String? text;
  final double fontSize;
  final double iconSize;
  final Color color;
  final double? width;
  final double? height;
  final Color textColor;
  final FontWeight fontWeight;
  final double horizontalPadding;
  final double horizontalMargin;
  final Widget? child;
  final Color? borderColor;
  final bool roundedCorners;
  final double elevation;
  final Color? overlayColor;
  final double borderWidth;
  final bool fitted;
  final bool isStartIcon;

  const ButtonSecondary(
      {Key? key,
      required void Function()? onTap,
      this.onIconTap,
      this.text,
      this.child,
      this.fontSize = Constants.buttonFontSize,
      this.color = Colors.black,
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.w600,
      this.horizontalPadding = Constants.mediumFieldPadding,
      this.horizontalMargin = Constants.formPadding,
      this.borderColor,
      this.roundedCorners = true,
      this.elevation = 0.0,
      this.overlayColor,
      this.borderWidth = 1.0,
      this.fitted = false,
      this.width,
      this.height,
      this.iconSize = 20.0,
      this.isStartIcon = false})
      : super(onTap, key: key);

  @override
  Widget build(BuildContext context) {
    Widget textWidget = Heading(
      text,
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? Constants.buttonHeight,
        width: width ?? MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        ),
        child: Center(child: textWidget),
      ),
    );
  }
}
