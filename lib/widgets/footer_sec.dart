import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/utiles/sns_links.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dart:js' as js;

class FoolerSection extends StatelessWidget {
  const FoolerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.dimenisonNo20),
      color: Colors.black,
      child: Column(
        children: [
          Text(
            '\nContact US : 7972391849\nEmail : samaystartup@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: Dimensions.dimenisonNo16,
              fontFamily: GoogleFonts.robotoSlab().fontFamily,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 1.00,
            ),
          ),
          SizedBox(
            height: Dimensions.dimenisonNo20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo10),
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    js.context.callMethod('open', [SnsLinks.instagram]);
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo10),
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    js.context.callMethod('open', [SnsLinks.facebook]);
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo10),
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    js.context.callMethod('open', [SnsLinks.linkedin]);
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo10),
                child: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.x,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    js.context.callMethod('open', [SnsLinks.x]);
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.dimenisonNo20,
          ),
        ],
      ),
    );
  }

  InkWell footerIcons(String imgUrl, VoidCallback ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.dimenisonNo10),
        width: Dimensions.dimenisonNo30,
        height: Dimensions.dimenisonNo30,
        child: Image.asset(
          imgUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
