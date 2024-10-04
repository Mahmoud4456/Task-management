import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.text,
  });
  final String text ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      selectionHeightStyle: BoxHeightStyle.tight,
      cursorColor: grey,
      decoration: InputDecoration(
        border: buildOutlineInputBorder(color: grey),
        focusedBorder: buildOutlineInputBorder(color: primaryColor),
        enabledBorder: buildOutlineInputBorder(color: grey),
        errorBorder: buildOutlineInputBorder(color: Colors.red),
        hintText: text ,

        hintStyle: const TextStyle(color:  Color(0xb9c6c6cb)  ,),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          width: .7,
          color: color,
        ),
      );
  }
}
