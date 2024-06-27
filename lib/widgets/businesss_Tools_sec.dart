import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/images_business_tools.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:samayweb/utiles/images.dart';

class BusinessToolsSection extends StatelessWidget {
  const BusinessToolsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.dimenisonNo20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(Dimensions.dimenisonNo20),
            width: double.infinity,
            child: AutoSizeText(
              'Business Management Tools ',
              style: TextStyle(
                color: AppColors.oneSolutonTxTColor,
                fontSize: Dimensions.screenWidth > 550
                    ? Dimensions.dimenisonNo35
                    : Dimensions.dimenisonNo20,
                fontFamily: GoogleFonts.robotoSlab().fontFamily,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // business Tool
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: Dimensions.screenWidth / 1),
              child: Wrap(
                spacing: Dimensions.dimenisonNo50,
                runSpacing: Dimensions.dimenisonNo40,
                children: const [
                  ImagesBusinessTools(
                      imgUrl: AppImages.calendar,
                      name: "Appointment\nManagement"),
                  ImagesBusinessTools(imgUrl: AppImages.salers, name: "Saler"),
                  ImagesBusinessTools(
                      imgUrl: AppImages.reports, name: "Business Reports"),
                  ImagesBusinessTools(
                      imgUrl: AppImages.clients, name: "Clients"),
                  ImagesBusinessTools(
                      imgUrl: AppImages.products, name: "Products Sellings"),
                  ImagesBusinessTools(
                      imgUrl: AppImages.jobPosting, name: "Job Postings"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.dimenisonNo20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo15),
            child: Text(
              "Samay offers a comprehensive ONE-Solution management tool for businesses, integrating daily appointment updates, calendar management, sales tracking, business reporting, product sales, and job postings into one unified platform. This all-in-one solution helps businesses streamline operations, enhance efficiency, and focus on growth without the stress of managing multiple systems.",
              style: TextStyle(
                fontSize: Dimensions.dimenisonNo20,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
