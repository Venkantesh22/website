import 'package:flutter/material.dart';
import 'package:samayweb/constants/dimenison.dart';

class LaptopImageSection extends StatelessWidget {
  const LaptopImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth / 2,
      height: Dimensions.dimenisonNo450,
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.dimenisonNo30,
          horizontal: Dimensions.dimenisonNo20),
      child: Image.asset(
        "assets/images/laptop.png",
        fit: BoxFit.contain,
      ),
    );
  }
}

class LaptopImageSectionMobile extends StatelessWidget {
  const LaptopImageSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth / 1,
      height: Dimensions.dimenisonNo450,
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.dimenisonNo20,
          horizontal: Dimensions.dimenisonNo20),
      child: Image.asset(
        "assets/images/laptop.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
