import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerText extends StatelessWidget {
  const DrawerText({Key? key, required this.text, this.onPress})
      : super(key: key);
  final String text;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
