import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/images.dart';
import 'package:samayweb/utiles/color.dart';

class MainSectionDesktop extends StatelessWidget {
  const MainSectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      color: AppColors.mainSectionColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Text
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                AutoSizeText(
                  'SAMAY\nONE-SOLUTION',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 55,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    letterSpacing: -1.28,
                  ),
                ),
                const SizedBox(height: 40),
                AutoSizeText(
                  'ALL-IN-ONE Book different\nAppointments at one place.',
                  style: TextStyle(
                    color: AppColors.allINTxTColor,
                    fontSize: 40,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          //Samay images

          SizedBox(
            width: 321,
            // width: 165,
            height: 500,
            child: Image.asset(
              AppImages.cartoon,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
