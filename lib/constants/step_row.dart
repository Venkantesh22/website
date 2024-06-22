import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/utiles/color.dart';

class StepRow extends StatelessWidget {
  const StepRow({Key? key, required this.stepNo, required this.sentance})
      : super(key: key);
  final String stepNo;
  final String sentance;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.dimenisonNo12,
          vertical: Dimensions.dimenisonNo16),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: Dimensions.dimenisonNo45,
            height: Dimensions.dimenisonNo45,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(
                side: BorderSide(
                    width: Dimensions.dimenisonNo5,
                    color: AppColors.appbarColor),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
            child: AutoSizeText(
              stepNo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFFFF0000),
                fontSize: Dimensions.dimenisonNo20,
                fontFamily: GoogleFonts.unlock().fontFamily,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            width: Dimensions.dimenisonNo20,
          ),
          Expanded(
            child: Text(
              sentance,
              style: TextStyle(
                color: Colors.black,
                fontSize: Dimensions.dimenisonNo16,
                fontFamily: GoogleFonts.robotoSlab().fontFamily,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
              softWrap: true,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
