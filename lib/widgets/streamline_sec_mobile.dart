import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/utiles/color.dart';

class StreamlineSecMobile extends StatelessWidget {
  const StreamlineSecMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.dimenisonNo20,
          horizontal: Dimensions.dimenisonNo10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(Dimensions.dimenisonNo20),
            decoration: const ShapeDecoration(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(side: BorderSide(width: 0.22)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.dimenisonNo40,
                  horizontal: Dimensions.dimenisonNo30),
              child: AutoSizeText(
                'Streamline \nYour \nBusiness \nAt one place',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Dimensions.dimenisonNo35,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w500,
                  height: 1.00,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.dimenisonNo10,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'ONE ',
                  style: TextStyle(
                    color: AppColors.oneSolutonTxTColor,
                    fontSize: Dimensions.dimenisonNo35,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'SOLUTION',
                  style: TextStyle(
                    color: AppColors.oneSolutonTxTColor,
                    fontSize: Dimensions.dimenisonNo20,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: Dimensions.screenWidth / 1.3,
              height: Dimensions.dimenisonNo60,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: AppColors.buttonBGColor,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.22, color: Color(0xFFDBEFC2)),
                  borderRadius: BorderRadius.circular(Dimensions.dimenisonNo16),
                ),
              ),
              child: Center(
                child: Text(
                  'Register your business',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.screenWidth == Dimensions.screenHeightM
                        ? Dimensions.dimenisonNo16
                        : Dimensions.dimenisonNo20,
                    fontFamily: GoogleFonts.robotoSlab().fontFamily,
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
