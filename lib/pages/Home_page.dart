// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/about.dart';
import 'package:samayweb/utiles/page_state.dart';
import 'package:samayweb/widgets/appBar_desktop.dart';
import 'package:samayweb/widgets/appbar_mobile.dart';
import 'package:samayweb/widgets/bookingSection.dart';
import 'package:samayweb/widgets/businesss_Tools_sec.dart';
import 'package:samayweb/widgets/download_sec_mobile.dart';
import 'package:samayweb/widgets/downloadsec_destop.dart';
import 'package:samayweb/widgets/drawer_mobile.dart';
import 'package:samayweb/widgets/footer_sec.dart';
import 'package:samayweb/widgets/form.dart';
import 'package:samayweb/widgets/laptop_img.dart';
import 'package:samayweb/widgets/mainSection_desktop.dart';
import 'package:samayweb/widgets/mainSection_mobile.dart';
import 'package:samayweb/widgets/mainSection_tablet.dart';
import 'package:samayweb/widgets/streamlin_desktop.dart';
import 'package:samayweb/widgets/streamline_sec_mobile.dart';
import 'dart:js' as js;

class Homepages extends StatefulWidget {
  const Homepages({Key? key}) : super(key: key);

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   PageStats.currentPage = "HomePage";
  // }

  final List<GlobalKey> navbarKeys = List.generate(3, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= deskTopScreen
            ? null
            : DrawerMoblie(
                onNavItemTap: (int navIndex) {
                  // call function
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarKeys.first,
              ),
              // App bar
              if (constraints.maxWidth >= deskTopScreen)
                AppbarDeskTop(
                  onLogoTap: () {},
                  onNavMenuTap: (int navIndex) {
                    // call function to jump to section
                    scrollToSection(navIndex);
                  },
                )
              else
                AppbarMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              //  MAIN SECTION
              if (constraints.maxWidth > deskTopScreen)
                const MainSectionDesktop()
              else if (constraints.maxWidth >= 550 &&
                  constraints.maxWidth <= 915)
                const MainSectionsTablets()
              else
                const MainSectionMobile(),
              const SizedBox(
                height: 35,
              ),

              //Booking Servies
              SizedBox(
                height: Dimensions.dimenisonNo10,
              ),
              const BookingSection(),

              //Features

              if (constraints.maxWidth > deskTopScreen)
                DownloadSectionDesktop(
                  key: navbarKeys[1],
                )
              else
                DownloadSecMoblie(
                  key: navbarKeys[1],
                ),

              //Steamline your business at

              if (constraints.maxWidth > deskTopScreen)
                const StrealineSecDesktop()
              else
                const StreamlineSecMobile(),

              // business Tool title

              const BusinessToolsSection(),
              if (constraints.maxWidth > deskTopScreen)
                const LaptopImageSection()
              else
                const LaptopImageSectionMobile(),

              // Live Appioment statisic
              SizedBox(
                height: Dimensions.dimenisonNo10,
              ),
              // Form
              // FormSection(

              // ),

              // Foot
              FoolerSection(
                key: navbarKeys[2],
              )
            ],
          ),
        ),
      );
    });
  }

  // Function to jump to Sections

  void scrollToSection(int navIndex) {
    if (navIndex == 3) {
      // open a About us page

      Routes.instance.push(widget: const AboutUspage(), context: context);

      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeInOut);
  }
}
