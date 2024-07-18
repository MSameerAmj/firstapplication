import 'package:firstapplication/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget HomeButton({width, height, icon, String? title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      Flexible(
          child: Text(
        title!,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: const TextStyle(fontFamily: bold),
      )),
    ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}
