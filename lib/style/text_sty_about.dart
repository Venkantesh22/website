import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';

class Style {
  static TextStyle customTextStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimensions.screenWidth <= 550
        ? Dimensions.dimenisonNo15
        : Dimensions.dimenisonNo18,
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontWeight: FontWeight.w500,
  );
}
