import 'package:flutter/material.dart';

const double deskTopScreen = 920.0;

const double mobile = 550;

class Dimensions {
  static late double screenHeight;
  static late double screenWidth;
  static late double screenHeightM;
  static late double screenWidthM;
  static late double screenHeightMobile;

// For Desktop screen
//   Width : 1232
//   Heigth : 598
// For Mobile screen
//   Width : 1232
//   Heigth : 754

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    // screenWidthM = screenWidth <= 550 ?  MediaQuery.of(context).size.width :;
    screenHeightM = MediaQuery.of(context).size.height;
    screenHeightMobile = MediaQuery.of(context).size.height;
  }

  static double cartoon = screenHeight / 1.029;
  static double cartoonwidth = screenHeight / 1.20;
  static double cartoonhightM = screenHeightMobile / 4.7407;

  // For Desktop screen
//   Width : 1232 /10 = 123.2
//   Heigth : 598
// For Mobile screen
//   Width : 1232
//   Heigth : 754 / 10 = 14.4

  static double dimenisonNo5 =
      screenWidth <= 550 ? screenHeightM / 150.8 : screenWidth / 246.4;
  static double dimenisonNo10 =
      screenWidth <= 550 ? screenHeightM / 75.4 : screenWidth / 123.2;
  static double dimenisonNo12 =
      screenWidth <= 550 ? screenHeightM / 62.833 : screenWidth / 102.666;
  static double dimenisonNo15 =
      screenWidth <= 550 ? screenHeightM / 50.266 : screenWidth / 82.133;
  static double dimenisonNo16 =
      screenWidth <= 550 ? screenHeightM / 47.125 : screenWidth / 77;
  static double dimenisonNo18 =
      screenWidth <= 550 ? screenHeightM / 41.88 : screenWidth / 68.44;
  static double dimenisonNo20 =
      screenWidth <= 550 ? screenHeightM / 37.7 : screenWidth / 61.6;
  static double dimenisonNo25 =
      screenWidth <= 550 ? screenHeightM / 30.16 : screenWidth / 49.28;
  static double dimenisonNo30 =
      screenWidth <= 550 ? screenHeightM / 25.133 : screenWidth / 41.66;
  static double dimenisonNo35 =
      screenWidth <= 550 ? screenHeightM / 21.5428 : screenWidth / 35.2;
  static double dimenisonNo40 =
      screenWidth <= 550 ? screenHeightM / 18.85 : screenWidth / 30.8;
  static double dimenisonNo45 =
      screenWidth <= 550 ? screenHeightM / 16.755 : screenWidth / 27.377;
  static double dimenisonNo50 =
      screenWidth <= 550 ? screenHeightM / 15.08 : screenWidth / 24.64;
  static double dimenisonNo60 =
      screenWidth <= 550 ? screenHeightM / 12.566 : screenWidth / 20.533;
  static double dimenisonNo110 =
      screenWidth <= 550 ? screenHeightM / 6.854 : screenWidth / 11.2;
  static double dimenisonNo250 =
      screenWidth <= 550 ? screenHeightM / 3.016 : screenWidth / 4.928;
  static double dimenisonNo266 =
      screenWidth <= 550 ? screenHeightM / 2.834 : screenWidth / 4.6315;
  static double dimenisonNo400 =
      screenWidth <= 550 ? screenHeightM / 1.885 : screenWidth / 3.08;
  static double dimenisonNo450 =
      screenWidth <= 550 ? screenHeightM / 1.677 : screenWidth / 2.7377;
  static double dimenisonNo900 =
      screenWidth <= 550 ? 900 : screenWidth / 1.36888;

  // static double dimenisonNo15 = screenHeight / 50.133;
  // static double dimenisonNo18 = screenHeight / 41.77;
  // static double dimenisonNo20 = screenHeight / 37.6;
  // static double dimenisonNo24 = screenHeight / 31.333;
  // static double dimenisonNo30 = screenHeight / 37.9;
  // static double dimenisonNo100 = screenHeight / 7.52;
  // static double dimenisonNo300 = screenHeight / 3.79;
}
