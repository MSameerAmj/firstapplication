import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/consts/lists.dart';
import 'package:firstapplication/widgets_common/appicon_widget.dart';
import 'package:firstapplication/widgets_common/background.dart';
import 'package:firstapplication/widgets_common/button.dart';
import 'package:firstapplication/widgets_common/textbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            Appicon(),
            10.heightBox,
            "Register to $appname".text.fontFamily(bold).white.size(20).make(),
            20.heightBox,
            Column(
              children: [
                CustomTextbox(hint: nameHint, title: name),
                CustomTextbox(hint: EmailHint, title: Email),
                CustomTextbox(title: Password, hint: PasswordHint),
                CustomTextbox(hint: PasswordHint, title: RetypePass),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      checkColor: purple,
                      value: ischeck,
                      onChanged: (newValue) {
                        setState(() {
                          ischeck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: Aggrement,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            ))
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                Button(
                        Color: ischeck == true ? purple : lightGrey,
                        Title: Register,
                        textColor: whiteColor,
                        onpress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: AlreadyHaveAcc,
                      style: TextStyle(fontFamily: bold, color: fontGrey),
                    ),
                    TextSpan(
                      text: Login,
                      style: TextStyle(fontFamily: bold, color: purple),
                    )
                  ]),
                ).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
