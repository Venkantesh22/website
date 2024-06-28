import 'package:flutter/material.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/about.dart';
import 'package:samayweb/pages/home_page.dart';
import 'package:samayweb/pages/coming_soon.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/constants/navBarText.dart';
import 'package:samayweb/pages/widget/appBarButton.dart';
import 'package:samayweb/utiles/color.dart';

class AppbarDeskTop extends StatefulWidget {
  const AppbarDeskTop({
    Key? key,
    this.onLogoTap,
    required this.onNavMenuTap,
  }) : super(key: key);
  final VoidCallback? onLogoTap;
  final Function(int) onNavMenuTap;

  @override
  State<AppbarDeskTop> createState() => _AppbarDeskTopState();
}

class _AppbarDeskTopState extends State<AppbarDeskTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appbarColor,
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: widget.onLogoTap,
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
                      widget.onNavMenuTap(0);
                    },
                  ),
                  NavBarText(
                    text: "Download",
                    ontap: () {
                      widget.onNavMenuTap(1);
                    },
                  ),
                  NavBarText(
                    text: "Contact Us ",
                    ontap: () {
                      widget.onNavMenuTap(2);
                    },
                  ),
                  NavBarText(
                    text: "About Us ",
                    ontap: () {
                      Routes.instance
                          .push(widget: const AboutUspage(), context: context);
                    },
                  ),
                  InkWell(
                    onTap: () {
                      Routes.instance
                          .push(widget: const ComingSoon(), context: context);
                    },
                    child: AppBarButton(
                        text: "Book Demo",
                        onTap: () {
                          Routes.instance.push(
                              widget: const ComingSoon(), context: context);
                        }),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class AppbarDeskTopNotHome extends StatefulWidget {
  const AppbarDeskTopNotHome({
    Key? key,
    this.onLogoTap,
    required this.onNavMenuTap,
  }) : super(key: key);
  final VoidCallback? onLogoTap;
  final Function(int) onNavMenuTap;

  @override
  State<AppbarDeskTopNotHome> createState() => _AppbarDeskTopNotHomeState();
}

class _AppbarDeskTopNotHomeState extends State<AppbarDeskTopNotHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appbarColor,
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: widget.onLogoTap,
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
                    Routes.instance
                        .push(widget: const Homepages(), context: context);
                  },
                ),
                NavBarText(
                  text: "Download",
                  ontap: () {
                    Routes.instance
                        .push(widget: const Homepages(), context: context);
                  },
                ),
                NavBarText(
                  text: "Contact Us ",
                  ontap: () {
                    Routes.instance
                        .push(widget: const Homepages(), context: context);
                  },
                ),
                NavBarText(
                  text: "About Us ",
                  ontap: () {
                    Routes.instance
                        .push(widget: const AboutUspage(), context: context);
                  },
                ),
                AppBarButton(
                    text: "Book Demo",
                    onTap: () {
                      Routes.instance
                          .push(widget: const ComingSoon(), context: context);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
