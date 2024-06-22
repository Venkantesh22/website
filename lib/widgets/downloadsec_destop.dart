import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/download_button.dart';
import 'package:samayweb/constants/step_download_desktop.dart';
import 'package:samayweb/constants/step_row.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/utiles/color.dart';

class DownloadSectionDesktop extends StatelessWidget {
  const DownloadSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.dimenisonNo50,
          vertical: Dimensions.dimenisonNo20),
      width: double.infinity,
      color: AppColors.mainSectionColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // download
              Column(
                children: [
                  Text(
                    'Install the app on your\nsmart device\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.dimenisonNo35,
                      fontFamily: GoogleFonts.robotoSlab().fontFamily,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  DownloadButton(
                      platform: "Google Store",
                      // icon: Icons.android_sharp,
                      imgUrl: AppImages.androidicon,
                      onTap: () {}),
                  SizedBox(
                    height: Dimensions.dimenisonNo20,
                  ),
                  DownloadButton(
                      platform: "Apply Store",
                      icon: Icons.apple_sharp,
                      onTap: () {}),
                ],
              ),
              // Android screen
              Container(
                  alignment: Alignment.topCenter,
                  // width: 327,
                  height: Dimensions.dimenisonNo450,
                  child: Image.asset(AppImages.android))
            ],
          ),
          SizedBox(
            height: Dimensions.dimenisonNo20,
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            child: AutoSizeText(
              'Booking Appointment in 3 easy  Step',
              style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.dimenisonNo40,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w700,
                height: 0.03,
                letterSpacing: -0.80,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.dimenisonNo20,
          ),
// booking
          SizedBox(
            height: Dimensions.dimenisonNo40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StepDownloadDesktop(
                    stepNo: "1",
                    sentance:
                        "First, select the category in which you want to book an appointment. "),
                StepDownloadDesktop(
                    stepNo: "2",
                    sentance:
                        'Second Choose the best provider place and the specific services you need.'),
                StepDownloadDesktop(
                  stepNo: "3",
                  sentance:
                      "Third, Select your favorite person, choose a date and time you're comfortable with, and book it.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
