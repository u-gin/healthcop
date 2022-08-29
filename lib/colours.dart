import 'dart:ui';

class Colours {
  static Color colorFromHex(String colorCode) {
    final hexCode = colorCode.replaceAll('#', '');
    Color newColor = Color(int.parse('FF$hexCode', radix: 16));
    return newColor;
  }

  static Color white = colorFromHex('#FFFFFF');
  static Color black = colorFromHex('#000000');
  static Color gray = colorFromHex('#EAEAEA');
  static Color darkGray = colorFromHex('#A9B4BD');
  static Color publishButtonColor = colorFromHex('#029AF0');
  static Color previewButtonColor = colorFromHex('#C4F2FF');
  static Color publishButtonTextColour = colorFromHex('#C4F2FF');
  static Color previewButtonTextColor = colorFromHex('#1A7C9F');
  static Color tileIndicatorColor = colorFromHex('#F5F6F9');
  static Color tileTextColor = colorFromHex('#0C0B27');
  static Color appbarColor = colorFromHex('#EEF0F8');
}
