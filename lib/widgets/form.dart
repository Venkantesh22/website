import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samayweb/constants/dimenison.dart';
import 'package:samayweb/constants/textformfield.dart';
import 'package:samayweb/pages/widget/appBarButton.dart';
import 'package:samayweb/utiles/color.dart';

class FormSection extends StatelessWidget {
  const FormSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController LastNameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController messagesController = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.dimenisonNo30,
          vertical: Dimensions.dimenisonNo20),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: Dimensions.dimenisonNo600),
            // height: Dimensions.dimenisonNo600,
            decoration: ShapeDecoration(
              color: AppColors.formSectionColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(Dimensions.dimenisonNo30),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Dimensions.dimenisonNo10),
                  child: Text(
                    'Enquiry Form',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: Dimensions.dimenisonNo25,
                      fontFamily: GoogleFonts.robotoSlab().fontFamily,
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: 0.15,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.dimenisonNo20,
                      vertical: Dimensions.dimenisonNo20),
                  child: Column(
                    children: [
                      Dimensions.screenWidth <= 550
                          ? Column(
                              children: [
                                CustomTextField(
                                  controller: firstNameController,
                                  hintText: "First Name",
                                ),
                                SizedBox(
                                  height: Dimensions.dimenisonNo10,
                                ),
                                CustomTextField(
                                  controller: LastNameController,
                                  hintText: "Last Name",
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Flexible(
                                  child: CustomTextField(
                                    controller: firstNameController,
                                    hintText: "First Name",
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.dimenisonNo10,
                                ),
                                Flexible(
                                  child: CustomTextField(
                                    controller: LastNameController,
                                    hintText: "Last Name",
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: Dimensions.dimenisonNo16,
                      ),
                      CustomTextField(
                        controller: numberController,
                        hintText: "Mobile Number",
                      ),
                      SizedBox(
                        height: Dimensions.dimenisonNo16,
                      ),
                      CustomTextField(
                        controller: messagesController,
                        hintText: "Write your message",
                        maxlines: 5,
                      ),
                      SizedBox(
                        height: Dimensions.dimenisonNo20,
                      ),
                      SizedBox(
                          width: Dimensions.dimenisonNo500,
                          child: AppBarButton(text: "Submit", onTap: () {}))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
