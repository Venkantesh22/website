import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/images.dart';
import 'package:samayweb/utiles/color.dart';

class MainSectionsTablets extends StatelessWidget {
  const MainSectionsTablets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: AppColors.mainSectionColor,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Text
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 140),
                AutoSizeText(
                  'SAMAY\nONE-SOLUTION',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    letterSpacing: -1.28,
                  ),
                ),
                const SizedBox(height: 40),
                AutoSizeText(
                  'ALL-IN-ONE Book different\nAppointments at one place.',
                  minFontSize: 16,
                  maxFontSize: 40,
                  style: TextStyle(
                    color: AppColors.allINTxTColor,
                    fontSize: 35,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          //Samay images

          Positioned(
            right: 20,
            child: SizedBox(
              width: 275,
              // width: screenWidth / 4.9034,
              height: 250,
              child: Image.asset(
                AppImages.cartoon,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
