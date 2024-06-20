// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/images.dart';
import 'package:samayweb/constants/screen_size.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:samayweb/widgets/appBar_desktop.dart';
import 'package:samayweb/widgets/appbar_mobile.dart';
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
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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

            //  MAIN SECTION
            if (constraints.maxWidth > deskTopScreen)
              MainSectionDesktop()
            else if (constraints.maxWidth >= 550 && constraints.maxWidth <= 915)
              MainSectionsTablets()
            else
              MainSectionMobile(),

            //Booking Servies
            Container(
              color: Colors.green,
              width: 546,
              height: 120,
              child: Column(
                children: [
                  AutoSizeText(
                    'Booking services ',
                    maxFontSize: 40,
                    minFontSize: 15,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.03,
                      letterSpacing: -0.80,
                    ),
                  ),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       double screenhight = MediaQuery.of(context).size.width;

                  //     },
                  //     child: Text("hiii"))
                ],
              ),
            ),

            //Features
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.green,
            ),
            //Booking steep
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
            //Steamline your business at
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.grey,
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
