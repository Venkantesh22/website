import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/utiles/images.dart';
import 'package:samayweb/utiles/color.dart';

class MainSectionMobile extends StatelessWidget {
  const MainSectionMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.dimenisonNo400,
      color: AppColors.mainSectionColor,
      child: Stack(
        children: [
          Positioned(
            right: Dimensions.dimenisonNo20,
            width: Dimensions.dimenisonNo250,
            height: Dimensions.dimenisonNo250,
            child: Image.asset(
              AppImages.cartoon,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: Dimensions.dimenisonNo230),
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
            margin: EdgeInsets.only(
                top: Dimensions.dimenisonNo300, left: Dimensions.dimenisonNo30),
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
                      height: 1.3,
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
                      height: 1.3,
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
