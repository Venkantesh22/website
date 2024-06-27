import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/utiles/color.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.green[900],
          backgroundColor: AppColors.buttonBGColor,
          side: const BorderSide(
              color: AppColors.buttonBorderColor) // foreground color
          ),
      child: Text(
        text,
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
