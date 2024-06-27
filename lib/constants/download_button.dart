import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/utiles/color.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton(
      {Key? key,
      required this.platform,
      this.icon,
      required this.onTap,
      this.imgUrl})
      : super(key: key);
  final String platform;
  final IconData? icon;
  final VoidCallback onTap;
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.dimenisonNo15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: AppColors.appbarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                Dimensions.dimenisonNo25, 0, Dimensions.dimenisonNo35, 0),
            child: platform == "Google Store"
                ? Image.asset(
                    imgUrl!,
                    height: Dimensions.dimenisonNo60,
                    width: Dimensions.dimenisonNo60,
                    fit: BoxFit.cover,
                  )
                : Icon(
                    icon,
                    size: Dimensions.dimenisonNo40,
                    color: Colors.white,
                  ),
          ),
          Column(
            children: [
              AutoSizeText(
                'Available on',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.dimenisonNo16,
                  fontFamily: GoogleFonts.robotoSlab().fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: Dimensions.dimenisonNo10,
              ),
              AutoSizeText(
                platform,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.dimenisonNo16,
                  fontFamily: GoogleFonts.robotoSlab().fontFamily,
                  fontWeight: FontWeight.bold,
                  height: 0.10,
                ),
              )
            ],
          ),
          SizedBox(
            width: Dimensions.dimenisonNo50,
          )
        ],
      ),
    );
  }
}

class DownloadButtonMobile extends StatelessWidget {
  const DownloadButtonMobile(
      {Key? key,
      required this.platform,
      this.icon,
      required this.onTap,
      this.imgUrl})
      : super(key: key);
  final String platform;
  final IconData? icon;
  final VoidCallback onTap;
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: AppColors.appbarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Dimensions.dimenisonNo10,
          ),
          platform == "Google Store"
              ? Image.asset(
                  imgUrl!,
                  height: Dimensions.dimenisonNo50,
                  width: Dimensions.dimenisonNo50,
                  fit: BoxFit.cover,
                )
              : Icon(
                  icon,
                  size: Dimensions.dimenisonNo40,
                  color: Colors.white,
                ),
          SizedBox(
            width: Dimensions.dimenisonNo10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              Dimensions.dimenisonNo10,
              0,
              Dimensions.dimenisonNo20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AutoSizeText(
                  'Available on',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.dimenisonNo12,
                    fontFamily: GoogleFonts.robotoSlab().fontFamily,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: Dimensions.dimenisonNo10,
                ),
                AutoSizeText(
                  platform,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Dimensions.dimenisonNo12,
                    fontFamily: GoogleFonts.robotoSlab().fontFamily,
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Dimensions.dimenisonNo25,
          ),
        ],
      ),
    );
  }
}
