import 'package:firstapplication/consts/consts.dart';
import 'package:flutter/material.dart';

Widget CustomTextbox({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(purple).fontFamily(regular).size(15).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
            hintStyle: TextStyle(
              fontFamily: regular,
              color: textfieldGrey,
            ),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: purple))),
      ),
      5.heightBox,
    ],
  );
}
