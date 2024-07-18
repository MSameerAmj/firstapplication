import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/consts/lists.dart';
import 'package:firstapplication/views/ProfileScreen/accountScreen_buttons.dart';
import 'package:firstapplication/widgets_common/background.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.edit, color: whiteColor))
                .onTap(() {}),
            Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(bold).make(),
                    "dummy@gmail.com".text.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: logout.text.fontFamily(bold).white.make())
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AccButton(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.4),
                AccButton(
                    count: "20",
                    title: "in your wishlist",
                    width: context.screenWidth / 3.4),
                AccButton(
                    count: "00",
                    title: "your orders",
                    width: context.screenWidth / 3.4),
              ],
            ),
            40.heightBox,
            ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          profilebtimages[index],
                          width: 22,
                        ),
                        title: profilebtlist[index]
                            .text
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(color: lightGrey);
                    },
                    itemCount: profilebtlist.length)
                .box
                .white
                .rounded
                .shadowSm
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .make()
          ],
        ),
      )),
    ));
  }
}
