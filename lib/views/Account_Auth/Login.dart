import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/consts/lists.dart';
import 'package:firstapplication/consts/strings.dart';
import 'package:firstapplication/views/Account_Auth/signup.dart';
import 'package:firstapplication/views/homeScreen/home.dart';
import 'package:firstapplication/widgets_common/appicon_widget.dart';
import 'package:firstapplication/widgets_common/background.dart';
import 'package:firstapplication/widgets_common/button.dart';
import 'package:firstapplication/widgets_common/textbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
            20.heightBox,
            Column(
              children: [
                CustomTextbox(hint: EmailHint, title: Email),
                CustomTextbox(title: Password, hint: PasswordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpass.text.make())),
                5.heightBox,
                Button(
                    Color: purple,
                    Title: Login,
                    textColor: whiteColor,
                    onpress: () {
                      Get.to(() => Home());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                Button(
                    Color: purple,
                    Title: Register,
                    textColor: whiteColor,
                    onpress: () {
                      Get.to(() => SignUpScreen());
                    }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                logwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      2,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
                )
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
