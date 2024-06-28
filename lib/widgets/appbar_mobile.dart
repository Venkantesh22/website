import 'package:flutter/material.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/utiles/color.dart';

class AppbarMobile extends StatelessWidget {
  const AppbarMobile({Key? key, this.onLogoTap, this.onMenuTap})
      : super(key: key);
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appbarColor,
      height: 50.0,
      child: Row(
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            child: IconButton(
                onPressed: onMenuTap,
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}

class AppbarMobileNotHome extends StatelessWidget {
  const AppbarMobileNotHome({Key? key, this.onLogoTap, this.onMenuTap})
      : super(key: key);
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appbarColor,
      height: 50.0,
      child: Row(
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            child: IconButton(
                onPressed: onMenuTap,
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
