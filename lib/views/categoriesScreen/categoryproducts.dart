import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/views/categoriesScreen/productdetail.dart';
import 'package:firstapplication/widgets_common/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categoryproducts extends StatelessWidget {
  final String? title;
  const Categoryproducts({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby clothing"
                        .text
                        .size(12)
                        .fontFamily(regular)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .rounded
                        .white
                        .size(120, 60)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            20.heightBox,
            Expanded(
                child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      imgP5,
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    "Laptop".text.fontFamily(regular).color(fontGrey).make(),
                    10.heightBox,
                    "\$600".text.fontFamily(bold).color(purple).size(15).make(),
                  ],
                )
                    .box
                    .color(whiteColor)
                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                    .roundedSM
                    .outerShadowSm
                    .padding(const EdgeInsets.all(12))
                    .make()
                    .onTap(() {
                  Get.to(() => const Productdetail(title: "Dummy Title"));
                });
              },
            ))
          ],
        ),
      ),
    ));
  }
}
