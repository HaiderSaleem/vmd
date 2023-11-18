import 'package:flutter/material.dart';

class AppColors {
  static final Color boxColor = HexColor.fromHex("#D9D9D9");
  static const Color primaryTextColor = Colors.black;
  static final Color buttonColor = HexColor.fromHex("#276EF8");
  static final Color appBackgroundColor = HexColor.fromHex("#FFF8E4");
  static final Color checkBoxColor = HexColor.fromHex("#D9D9D9");
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
