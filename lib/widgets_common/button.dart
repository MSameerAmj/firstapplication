import 'package:firstapplication/consts/consts.dart';
import 'package:flutter/material.dart';

Widget Button({onpress, Color, textColor, String? Title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color, padding: const EdgeInsets.all(12)),
      onPressed: onpress,
      child: Title!.text.color(textColor).fontFamily(bold).make());
}
