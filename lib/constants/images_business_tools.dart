import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';

class ImagesBusinessTools extends StatelessWidget {
  const ImagesBusinessTools(
      {Key? key, required this.imgUrl, required this.name})
      : super(key: key);
  final String imgUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: Dimensions.dimenisonNo300,
          height: Dimensions.dimenisonNo250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.dimenisonNo10)),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius:
                      BorderRadius.circular(Dimensions.dimenisonNo10)),
            ),
          ),
        ),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            letterSpacing: 1.50,
            color: Colors.white,
            fontSize: Dimensions.dimenisonNo30,
            fontFamily: GoogleFonts.robotoSlab().fontFamily,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
