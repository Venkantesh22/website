import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/images.dart';
import 'package:samayweb/utiles/color.dart';

class MainSectionMobile extends StatelessWidget {
  const MainSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: AppColors.mainSectionColor,
      child: Stack(
        children: [
          Positioned(
            right: 25,
            width: 182,
            height: 162,
            child: Image.asset(
              AppImages.cartoon,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 95),
            height: 95,
            child: Text(
              'SAMAY\nONE-SOLUTION\n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 170, left: 30),
            width: 319,
            height: 300,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      color: AppColors.allINTxTColor,
                      fontSize: 30,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text:
                        'ALL- IN - ONE Book different Appointments at one place.',
                    style: TextStyle(
                      color: AppColors.allINTxTColor,
                      fontSize: 20,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
