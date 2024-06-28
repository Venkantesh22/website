import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/download_button.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/constants/step_row.dart';
import 'package:samayweb/pages/coming_soon.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:samayweb/utiles/images.dart';

class DownloadSecMoblie extends StatelessWidget {
  const DownloadSecMoblie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: Dimensions.dimenisonNo10),
      color: AppColors.mainSectionColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.android,
            width: Dimensions.screenWidth,
            height: Dimensions.dimenisonNo450,
          ),
          AutoSizeText(
            'Install the app on your smart device',
            style: TextStyle(
              color: Colors.black,
              fontSize: Dimensions.dimenisonNo18,
              fontFamily: GoogleFonts.robotoSlab().fontFamily,
              fontWeight: FontWeight.w600,
              height: 0.07,
            ),
          ),
          SizedBox(
            height: Dimensions.dimenisonNo10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.dimenisonNo10,
              vertical: Dimensions.dimenisonNo20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DownloadButtonMobile(
                  platform: "Google Store",
                  // icon: Icons.android_sharp,
                  onTap: () {
                    Routes.instance
                        .push(widget: const ComingSoon(), context: context);
                  },
                  imgUrl: AppImages.androidicon,
                ),
                DownloadButtonMobile(
                    platform: "Apply Store",
                    icon: Icons.apple_sharp,
                    onTap: () {
                      Routes.instance
                          .push(widget: const ComingSoon(), context: context);
                    }),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: Dimensions.screenWidth / 1.6),
            child: AutoSizeText(
              'Booking Appointment in\n3 easy  Step',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.dimenisonNo18,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.bold,
                height: 1.2,
                letterSpacing: -0.36,
              ),
            ),
          ),
          const StepRow(
              stepNo: "1",
              sentance:
                  "First, select the category in which you want to book an appointment. "),
          const StepRow(
              stepNo: "2",
              sentance:
                  'Second Choose the best provider place and the specific services you need.'),
          const StepRow(
              stepNo: "3",
              sentance:
                  "Third, Select your favorite person, choose a date and time you're comfortable with, and book it."),
        ],
      ),
    );
  }
}
