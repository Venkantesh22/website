import 'package:flutter/material.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/about.dart';
import 'package:samayweb/pages/home_page.dart';
import 'package:samayweb/pages/coming_soon.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/constants/navBarText.dart';
import 'package:samayweb/pages/widget/appBarButton.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:samayweb/utiles/page_state.dart';

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
            child: PageStats.currentPage == "HomePage"
                ? Row(
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
                      InkWell(
                        onTap: () {
                          Routes.instance.push(
                              widget: const ComingSoon(), context: context);
                        },
                        child: AppBarButton(
                            text: "Book Demo",
                            onTap: () {
                              Routes.instance.push(
                                  widget: const ComingSoon(), context: context);
                            }),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      NavBarText(
                        text: "Home",
                        ontap: () {
                          Routes.instance.push(
                              widget: const Homepages(), context: context);
                        },
                      ),
                      NavBarText(
                        text: "Download",
                        ontap: () {
                          Routes.instance.push(
                              widget: const Homepages(), context: context);
                        },
                      ),
                      NavBarText(
                        text: "Contact Us ",
                        ontap: () {
                          Routes.instance.push(
                              widget: const Homepages(), context: context);
                        },
                      ),
                      NavBarText(
                        text: "About Us ",
                        ontap: () {
                          Routes.instance.push(
                              widget: const AboutUspage(), context: context);
                        },
                      ),
                      AppBarButton(
                          text: "Book Demo",
                          onTap: () {
                            Routes.instance.push(
                                widget: const ComingSoon(), context: context);
                          }),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
