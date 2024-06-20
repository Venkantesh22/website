import 'package:flutter/material.dart';
import 'package:samayweb/constants/drawer_text.dart';
import 'package:samayweb/utiles/color.dart';

class DrawerMoblie extends StatelessWidget {
  const DrawerMoblie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.appbarColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 20, bottom: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
          DrawerText(
            text: "Home",
            onPress: () {},
          ),
          DrawerText(
            text: "Features",
            onPress: () {},
          ),
          DrawerText(
            text: "Contact Us",
            onPress: () {},
          ),
          DrawerText(
            text: "About Us",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
