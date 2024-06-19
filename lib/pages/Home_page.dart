// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:samayweb/constants/images.dart';
import 'package:samayweb/utiles/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepages extends StatefulWidget {
  const Homepages({Key? key}) : super(key: key);

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF184D27),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                width: 60,
                height: 60,
                child: Image.asset(AppImages.logoImg)),
            // logo URL here
            Row(
              children: [
                for (int i = 0; i <= 2; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {},
                      // ignore: prefer_const_constructors
                      child: Text(
                        'HOME',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/bookdemo'); // Navigate to the Book Demo page
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.green[900],
                    backgroundColor: Colors.greenAccent, // foreground color
                  ),
                  child: Text('Book Demo'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
          Container(
            color: AppColors.mainSectionColor,
            height: 500,
            width: double.infinity,
          ),
          //Booking Servies
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.green,
          ),
          //Features
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.green,
          ),
          //Booking steep
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.red,
          ),
          //Steamline your business at
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.grey,
          ),
          // business Tool
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.red,
          ),
          // Live Appioment statisic
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.yellow,
          ),
          // Form
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.green,
          ),
          // Foot
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
