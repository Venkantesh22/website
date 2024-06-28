import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/home_page.dart';
import 'package:samayweb/style/text_sty_about.dart';
import 'package:samayweb/utiles/page_state.dart';
import 'package:samayweb/widgets/appBar_desktop.dart';
import 'package:samayweb/widgets/appbar_mobile.dart';
import 'package:samayweb/widgets/drawer_mobile.dart';
import 'package:samayweb/widgets/footer_sec.dart';

class AboutUspage extends StatefulWidget {
  const AboutUspage({Key? key}) : super(key: key);

  @override
  State<AboutUspage> createState() => _AboutUspageState();
}

class _AboutUspageState extends State<AboutUspage> {
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
                  scaffoldKey.currentState?.closeEndDrawer();
                },
              ),
        body: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
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
                'About Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.dimenisonNo60,
                  fontFamily: GoogleFonts.robotoSlab().fontFamily,
                  fontWeight: FontWeight.w500,
                  height: 0,
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
                        "Samay is an all-in-one super app designed to simplify the appointment booking process across a wide range of services, including doctors, salons, spas, gyms, yoga classes, job searches, tattoo artists, events, school appointments, hotels, and restaurants. Our platform allows users to effortlessly schedule appointments, manage their booking history, and store medical records, all in one unified interface.",
                        style: Style.customTextStyle),
                    SizedBox(
                      height: Dimensions.dimenisonNo10,
                    ),
                    Text(
                        "For businesses, Samay offers a comprehensive ONE-Solution management tool. This powerful feature integrates daily appointment updates, calendar management, sales tracking, business reporting, product sales, and job postings into a single, cohesive platform. By using Samay, businesses can streamline operations, enhance efficiency, and focus on growth without the stress of managing multiple systems. Our goal is to revolutionize the way appointments and bookings are managed, providing a seamless experience for both service providers and customers. We envision a future where scheduling is effortless and efficient.",
                        style: Style.customTextStyle),
                    SizedBox(
                      height: Dimensions.dimenisonNo10,
                    ),
                    Text(
                        "One of Samay's robust features is its ability to store appointment histories and medical records. For hospital and medical appointments, Samay securely stores users' medical histories, including previous appointments, medical conditions, prescribed treatments, test results, and other relevant health information. This comprehensive view of a patient's health background is accessible to doctors during appointments, enabling informed decision-making and better care. Patients benefit from not having to repeatedly provide their medical history, saving time and reducing the risk of missing critical information. They can also track their health progress and maintain a record of all medical visits and treatments in one place.",
                        style: Style.customTextStyle),
                    SizedBox(
                      height: Dimensions.dimenisonNo10,
                    ),
                    Text(
                        " For other appointments, such as those for salons, spas, and gyms, Samay maintains a history of all bookings. This allows users to easily view past appointments and rebook services. Service providers can access client history to offer personalized services based on past interactions, enhancing customer satisfaction and loyalty.",
                        style: Style.customTextStyle),
                    SizedBox(
                      height: Dimensions.dimenisonNo10,
                    ),
                    Text(
                        "By having a unified platform that stores all appointment histories, Samay streamlines operations for both users and service providers. This reduces administrative burdens and ensures that all necessary information is readily available for every appointment.",
                        style: Style.customTextStyle),
                  ],
                ),
              ),

              // foot
              SizedBox(
                height: Dimensions.dimenisonNo25,
              ),
              const FoolerSection()
            ],
          ),
        ),
      );
    });
  }
}
