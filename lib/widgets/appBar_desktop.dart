import 'package:flutter/material.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/constants/navBarText.dart';
import 'package:samayweb/pages/widget/appBarButton.dart';
import 'package:samayweb/utiles/color.dart';

class AppbarDeskTop extends StatelessWidget {
  const AppbarDeskTop({
    Key? key,
    this.onLogoTap,
    required this.onNavMenuTap,
  }) : super(key: key);
  final VoidCallback? onLogoTap;
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appbarColor,
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onLogoTap,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              width: 80,
              height: 80,
              child: Image.asset(
                AppImages.logoImg,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                NavBarText(
                  text: "Home",
                  ontap: () {
                    onNavMenuTap(0);
                  },
                ),
                NavBarText(
                  text: "Download",
                  ontap: () {
                    onNavMenuTap(1);
                  },
                ),
                NavBarText(
                  text: "Contact Us ",
                  ontap: () {
                    onNavMenuTap(2);
                  },
                ),
                NavBarText(
                  text: "About Us ",
                  ontap: () {
                    onNavMenuTap(3);
                  },
                ),
                AppBarButton(text: "Book Demo", onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
