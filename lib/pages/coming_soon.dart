import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/about.dart';
import 'package:samayweb/pages/home_page.dart';
import 'package:samayweb/style/text_sty_about.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/utiles/page_state.dart';
import 'package:samayweb/widgets/appBar_desktop.dart';
import 'package:samayweb/widgets/appbar_mobile.dart';
import 'package:samayweb/widgets/drawer_mobile.dart';
import 'package:samayweb/widgets/footer_sec.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        endDrawer: constraints.maxWidth >= deskTopScreen
            ? null
            : DrawerMoblie(
                onNavItemTap: (int navIndex) {
                  // call function
                },
              ),
        body: Column(
          children: [
            // Appbar
            if (constraints.maxWidth >= deskTopScreen)
              AppbarDeskTopNotHome(
                onLogoTap: () {},
                onNavMenuTap: (int navIndex) {},
              )
            else
              AppbarMobileNotHome(
                onLogoTap: () {
                  Routes.instance
                      .push(widget: const AboutUspage(), context: context);
                },
                onMenuTap: () {
                  // scaffoldKey.currentState?.openEndDrawer();
                  Routes.instance
                      .push(widget: const Homepages(), context: context);
                },
              ),

            // Title
            SizedBox(
              height: Dimensions.dimenisonNo60,
            ),
            Text(
              'Coming Soon.... ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.dimenisonNo60,
                fontFamily: GoogleFonts.robotoSlab().fontFamily,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
            ),

            // Text
            SizedBox(
              height: Dimensions.dimenisonNo60,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo20),
              child: Column(
                children: [
                  Text(
                      "We are excited to announce that we are in the process of developing the MVP for Samay, focusing on key categories such as salons, gyms, doctors, and events. As a new startup, we face challenges due to limited funding, which impacts our resources and team size. Despite these obstacles, our passion for innovation and dedication to creating a user-friendly platform remains unwavering.",
                      style: Style.customTextStyle),
                  SizedBox(
                    height: Dimensions.dimenisonNo10,
                  ),
                  Text(
                      "Samay aims to revolutionize the way appointments and bookings are managed, providing a seamless experience for both service providers and customers. By integrating these categories into our super app, we envision a future where scheduling is effortless and efficient.",
                      style: Style.customTextStyle),
                  SizedBox(
                    height: Dimensions.dimenisonNo10,
                  ),
                  Text(
                      "However, to bring this vision to life, we need support from the tech community. We are looking for talented individuals who are willing to contribute their skills and expertise to help us overcome these initial hurdles. Whether you are a developer, designer, marketer, or have experience in any other relevant field, your assistance could make a significant difference.",
                      style: Style.customTextStyle),
                  SizedBox(
                    height: Dimensions.dimenisonNo10,
                  ),
                ],
              ),
            ),

            // foot

            SizedBox(
              height: Dimensions.dimenisonNo100,
            ),
            const FoolerSection()
          ],
        ),
      );
    });
  }
}
