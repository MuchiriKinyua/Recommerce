import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#a0616a');

  static Color gray700 = fromHex('#5d5d5d');

  static Color deepOrange50 = fromHex('#f3e6e6');

  static Color gray900 = fromHex('#1c1b1b');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color red300 = fromHex('#ae5a5a');

  static Color red400 = fromHex('#b25757');

  static Color tealA200 = fromHex('#51ece3');

  static Color gray50 = fromHex('#fffbfb');

  static Color gray100 = fromHex('#f5f2f2');

  static Color green400 = fromHex('#4eaf75');

  static Color teal400 = fromHex('#14b68f');

  static Color greenA700 = fromHex('#1eb953');

  static Color teal600 = fromHex('#109f6b');

  static Color teal402 = fromHex('#1eae7a');

  static Color teal401 = fromHex('#36b688');

  static Color black900 = fromHex('#000000');

  static Color bluegray500 = fromHex('#479490');

  static Color bluegray400 = fromHex('#888888');

  static Color pink700 = fromHex('#af5454');

  static Color pink800 = fromHex('#ab4f4f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
