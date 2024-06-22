import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';

class ImagesServices extends StatelessWidget {
  const ImagesServices({Key? key, required this.imageUrl, required this.label})
      : super(key: key);
  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: Dimensions.dimenisonNo250,
          height: Dimensions.dimenisonNo266,

          // width: 250,
          // height: 266,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.dimenisonNo10),
            // color: Colors.red,
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: Dimensions.dimenisonNo25,
            fontFamily: GoogleFonts.robotoSlab().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
