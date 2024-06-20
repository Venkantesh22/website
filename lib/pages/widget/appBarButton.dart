import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/utiles/color.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to the Book Demo page
      },
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.green[900],
          backgroundColor: AppColors.buttonBGColor,
          side: const BorderSide(
              color: AppColors.buttonBorderColor) // foreground color
          ),
      child: Text(
        'Book Demo',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: GoogleFonts.robotoSlab().fontFamily,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
