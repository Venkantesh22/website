import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/utiles/color.dart';

class StepDownloadDesktop extends StatelessWidget {
  const StepDownloadDesktop(
      {Key? key, required this.stepNo, required this.sentance})
      : super(key: key);
  final String stepNo;
  final String sentance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.screenWidth / 3.5,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: Dimensions.dimenisonNo110,
            height: Dimensions.dimenisonNo110,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(
                side: BorderSide(
                  width: Dimensions.dimenisonNo10,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: AppColors.appbarColor,
                ),
              ),
              shadows: [
                BoxShadow(
                  color: const Color(0x3F000000),
                  blurRadius: Dimensions.dimenisonNo5,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Text(
              stepNo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFFFF0000),
                fontSize: Dimensions.dimenisonNo30,
                fontFamily: GoogleFonts.merriweather().fontFamily,
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.dimenisonNo16,
          ),
          Text(
            sentance,
            style: TextStyle(
              color: Colors.black,
              fontSize: Dimensions.dimenisonNo20,
              fontFamily: GoogleFonts.robotoSlab().fontFamily,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
            softWrap: true,
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
