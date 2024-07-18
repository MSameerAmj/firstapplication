import 'package:firstapplication/consts/colors.dart';
import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/views/Account_Auth/Login.dart';
import 'package:firstapplication/widgets_common/appicon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  NextScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    NextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: Center(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              )),
          20.heightBox,
          Appicon(),
          10.heightBox,
          appname.text.fontFamily(bold).size(22).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          Spacer(),
          credits.text.white.fontFamily(bold).size(12).make(),
          30.heightBox,
        ],
      )),
    );
  }
}
