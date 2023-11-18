import 'package:flutter/material.dart';

abstract class Constants {
  //App Name
  static const String appName = "vmd";

  // Dimensions
  static const double pagePadding = 20.0;
  static const double formPadding = 40.0;
  static const double smallFieldPadding = 5.0;
  static const double mediumFieldPadding = 10.0;
  static const double largeFieldPadding = 13.0;
  static const double xlargeFieldPadding = 15.0;
  static const double iconPadding = 10.0;
  static const double cardBorderRadius = 13.0;
  static const double buttonHeight = 50.0;
  static const double smallDialogButtonHeight = 25.0;
  static const double buttonNavigationHeight = 60.0;
  static const double buttonWidth = 100.0;
  static const double smallDialogButtonWidth = 45.0;
  static const double mediumDialogButtonWidth = 60.0;
  static const double boxHeight = 10.0;
  static const double boxWidth = 20.0;
  static const double loginTextFieldHeight = 80.0;
  static const double smallFlagIconWidth = 18.0;
  static const double smallFlagIconHeight = 15.0;
  static const double backIconPadding = kToolbarHeight / 5;
  static const double xxSmallIconSize = 10.0;
  static const double xSmallIconSize = 15.0;
  static const double smallIconSize = 16.0;
  static const double mediumIconSize = 18.0;
  static const double largeIconSize = 20.0;
  static const double xLargeIconSize = 60.0;
  static const double xxLargeIconSize = 70.0;
  static const double xxxLargeIconSize = 110.0;
  static const double xxxxLargeIconSize = 150.0;
  static const double smallleadingWidth = 20.0;
  static const double mediumLeadingWidth = 30.0;
  static const double largeLeadingWidth = 40.0;
  static const double smallBackIconPadding = kToolbarHeight / 5;
  static const double mediumBackIconPadding = kToolbarHeight / 4;
  static const double largeBackIconPadding = kToolbarHeight / 3;

  // Font families
  static const String montserratFontFamily = "Montserrat";

  // Assets paths
  static const String imageDirectory = "assets/images";
  static const String iconDirectory = "assets/icons";
  static const String loadingAnimation = "assets/animations/loader.gif";

  // Font sizes
  static const double xxxLargeFontSize = 40.0;
  static const double xxLargeFontSize = 30.0;
  static const double xLargeFontSize = 25.0;
  static const double largeFontSize = 20.0;
  static const double buttonFontSize = 18.0;
  static const double mediumFontSize = 16.0;
  static const double smallFontSize = 14.0;
  static const double xSmallFontSize = 12.0;
  static const double xxSmallFontSize = 10.0;
  static const double xxxSmallFontSize = 8.0;
  static const double otpFontSize = 24.0;
  static const double heightOTPTextField = 50.0;

  // Regex
  static String validPhoneRegEx = r"^\d{3}-\d{3}-\d{4}$";
  static String validNameRegEx = r"^[a-zA-Z&%=]+$";
  static String validZipCodeRegEx = r"^[a-zA-Z0-9&%=]+$";

  static const String nonBreakingHyphen = '\u2011';
}
