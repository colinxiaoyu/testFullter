import 'package:flutter/material.dart';

class HYSizeFit {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double rpx;
  static late double px;
  static late double density;

  static final standardWidth = 750;

  static void initialize(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    print(_mediaQueryData.toString());
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    density = _mediaQueryData.devicePixelRatio;

    rpx = screenWidth / standardWidth;
  }

  static double setRpx(double size) {
    if (screenWidth < standardWidth) {
      return HYSizeFit.rpx * size;
    } else {
      return size / density;
    }
  }
}
