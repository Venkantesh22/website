import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/router.dart';
import 'package:samayweb/pages/coming_soon.dart';
import 'package:samayweb/utiles/color.dart';

class StrealineSecDesktop extends StatelessWidget {
  const StrealineSecDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.dimenisonNo20,
          vertical: Dimensions.dimenisonNo30),
      width: double.infinity,
      decoration: const ShapeDecoration(
        color: AppColors.steamlineSectionColor,
        shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
      ),
      child: Row(
        children: [
          // Text Streamline

          AutoSizeText(
            'Streamline \nYour\nBusiness \nAt one place',
            style: TextStyle(
              color: const Color(0xBF1F1616),
              fontSize: Dimensions.dimenisonNo110,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.w500,
              height: 0.90,
            ),
            softWrap: true,
            maxLines: 5,
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // One
              Text(
                'ONE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.oneSolutonTxTColor,
                  fontSize: Dimensions.dimenisonNo150,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),

              Text(
                'SOLUTION',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.oneSolutonTxTColor,
                  fontSize: Dimensions.dimenisonNo60,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              SizedBox(
                height: Dimensions.dimenisonNo20,
              ),
              InkWell(
                onTap: () {
                  Routes.instance
                      .push(widget: const ComingSoon(), context: context);
                },
                child: Container(
                  width: Dimensions.screenWidth / 3,
                  height: Dimensions.dimenisonNo110,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.oneSolutonTxTColor,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1, color: AppColors.buttonBorderColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Register your business',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.dimenisonNo30,
                        fontFamily: GoogleFonts.robotoSlab().fontFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
