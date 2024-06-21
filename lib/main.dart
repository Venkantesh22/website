// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/pages/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samay Introduction Website',
      home: Builder(builder: (context) {
        Dimensions.init(context);
        return const Homepages();
      }),
    );
  }
}
