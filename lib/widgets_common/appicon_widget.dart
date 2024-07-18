import 'package:firstapplication/consts/consts.dart';
import 'package:flutter/material.dart';

Widget Appicon() {
  return Image.asset(icAppicon)
      .box
      .white
      .size(77, 77)
      .padding(EdgeInsets.all(8))
      .rounded
      .make();
}
