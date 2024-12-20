import 'package:firstapplication/consts/consts.dart';
import 'package:flutter/material.dart';

Widget background(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imgBackground), fit: BoxFit.fill)),
    child: child,
  );
}
