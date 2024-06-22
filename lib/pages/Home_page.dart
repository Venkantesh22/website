import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/Images_services.dart';

import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/download_button.dart';
import 'package:samayweb/constants/step_row.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:samayweb/widgets/appBar_desktop.dart';
import 'package:samayweb/widgets/appbar_mobile.dart';
import 'package:samayweb/widgets/bookingSection.dart';
import 'package:samayweb/widgets/download_sec_mobile.dart';
import 'package:samayweb/widgets/downloadsec_destop.dart';
import 'package:samayweb/widgets/drawer_mobile.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:samayweb/widgets/mainSection_desktop.dart';
import 'package:samayweb/widgets/mainSection_mobile.dart';
import 'package:samayweb/widgets/mainSection_tablet.dart';

class Homepages extends StatefulWidget {
  const Homepages({Key? key}) : super(key: key);

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer:
            constraints.maxWidth >= deskTopScreen ? null : const DrawerMoblie(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //App bar

            if (constraints.maxWidth >= deskTopScreen)
              AppbarDeskTop(onLogoTap: () {})
            else
              AppbarMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),

            // //  MAIN SECTION
            // if (constraints.maxWidth > deskTopScreen)
            //   const MainSectionDesktop()
            // else if (constraints.maxWidth >= 550 && constraints.maxWidth <= 915)
            //   const MainSectionsTablets()
            // else
            //   const MainSectionMobile(),
            // const SizedBox(
            //   height: 35,
            // ),
            // //Booking Servies
            // SizedBox(
            //   height: Dimensions.dimenisonNo10,
            // ),
            // const BookingSection(),

            // //Features

            // if (constraints.maxWidth > deskTopScreen)
            //   const DownloadSectionDesktop()
            // else
            //   const DownloadSecMoblie(),
            // //Booking steep
            Container(
              height: 700,
              // height: 200,
              // width: double.infinity,
              color: AppColors.steamlineSectionColor,
              child: Row(
                children: [
                  // Text Streamline
                  Expanded(
                    child: AutoSizeText(
                      'Streamline\nhii',
                      style: TextStyle(
                        color: const Color(0xBF1F1616),
                        fontSize: 140,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontWeight: FontWeight.w500,
                        height: 0.01,
                      ),
                      softWrap: true,
                      maxLines: 5,
                    ),
                  ),

                  // Column(
                  //   children: [
                  //     // One
                  //   ],
                  // )
                ],
              ),
            ),
            //Steamline your business at
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blue,
              child: Text("SteamLie Yop "),
            ),
            // business Tool
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.red,
            ),
            // Live Appioment statisic
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.yellow,
            ),
            // Form
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.green,
            ),
            // Foot
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.black,
            ),
          ],
        ),
      );
    });
  }
}
