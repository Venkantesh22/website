import 'package:flutter/material.dart';

const double deskTopScreen = 920.0;

const double mobile = 550;

class Dimensions {
  static late double screenHeight;
  static late double screenHeightMobile;

  // screen height 598.0
  // screen height 768.0

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.width;
    screenHeightMobile = MediaQuery.of(context).size.height;
  }

  static double cartoon = screenHeight / 1.029;
  static double cartoonwidth = screenHeight / 1.20;
  static double cartoonhightM = screenHeightMobile / 4.7407;

  // static double dimenisonNo15 = screenHeight / 50.133;
  // static double dimenisonNo18 = screenHeight / 41.77;
  // static double dimenisonNo20 = screenHeight / 37.6;
  // static double dimenisonNo24 = screenHeight / 31.333;
  // static double dimenisonNo30 = screenHeight / 37.9;
  // static double dimenisonNo100 = screenHeight / 7.52;
  // static double dimenisonNo300 = screenHeight / 3.79;
}
