import 'package:flutter/material.dart';
import 'package:samayweb/constants/dimenison.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.maxlines = 1,
      this.inputType})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final int? maxlines;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxlines,
      keyboardType: inputType,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.dimenisonNo10),
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: Dimensions.dimenisonNo10,
              horizontal: Dimensions.dimenisonNo20)),
    );
  }
}
