import 'package:firstapplication/consts/consts.dart';
import 'package:flutter/material.dart';

Widget Featuredbutton({image, String? title}) {
  return Row(
    children: [
      Image.asset(image, width: 60, fit: BoxFit.fill),
      10.widthBox,
      Flexible(
          child: Text(
        title!,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: const TextStyle(fontFamily: bold, color: darkFontGrey),
      )),
    ],
  )
      .box
      .width(200)
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .roundedSM
      .padding(const EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
