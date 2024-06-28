import 'package:flutter/material.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/drawer_text.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/widget/appBarButton.dart';
import 'package:samayweb/pages/coming_soon.dart';
import 'package:samayweb/utiles/color.dart';

class DrawerMoblie extends StatelessWidget {
  const DrawerMoblie({Key? key, required this.onNavItemTap}) : super(key: key);
  final Function(int) onNavItemTap;

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
              onPress: () {
                onNavItemTap(0);
              },
            ),
            DrawerText(
              text: "Download",
              onPress: () {
                onNavItemTap(1);
              },
            ),
            DrawerText(
              text: "Contact Us",
              onPress: () {
                onNavItemTap(2);
              },
            ),
            DrawerText(
              text: "About Us",
              onPress: () {
                onNavItemTap(3);
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.dimenisonNo18, top: Dimensions.dimenisonNo5),
              child: AppBarButton(
                  text: "Book Demo",
                  onTap: () {
                    Routes.instance
                        .push(widget: const ComingSoon(), context: context);
                  }),
            )
          ],
        ));
  }
}
