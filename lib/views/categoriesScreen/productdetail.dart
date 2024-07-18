import 'package:firstapplication/consts/colors.dart';
import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/consts/lists.dart';
import 'package:firstapplication/widgets_common/button.dart';
import 'package:flutter/material.dart';

class Productdetail extends StatelessWidget {
  final String? title;
  const Productdetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VxSwiper.builder(
                            autoPlay: true,
                            height: 350,
                            aspectRatio: 16 / 9,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Image.asset(
                                imgFc5,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              );
                            }),
                        10.heightBox,
                        title!.text
                            .fontFamily(regular)
                            .color(darkFontGrey)
                            .size(16)
                            .make(),
                        10.heightBox,
                        VxRating(
                          onRatingUpdate: (value) {},
                          normalColor: textfieldGrey,
                          selectionColor: golden,
                          count: 5,
                          size: 25,
                          stepInt: true,
                        ),
                        10.heightBox,
                        "\$50"
                            .text
                            .fontFamily(bold)
                            .color(redColor)
                            .size(18)
                            .make(),
                        10.heightBox,
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Seller"
                                    .text
                                    .color(purple)
                                    .fontFamily(bold)
                                    .make(),
                                5.heightBox,
                                "In House Brand"
                                    .text
                                    .color(darkFontGrey)
                                    .fontFamily(bold)
                                    .size(16)
                                    .make()
                              ],
                            )),
                            const CircleAvatar(
                              backgroundColor: whiteColor,
                              child: Icon(
                                Icons.message_rounded,
                                color: darkFontGrey,
                              ),
                            )
                          ],
                        )
                            .box
                            .color(textfieldGrey)
                            .padding(const EdgeInsets.symmetric(horizontal: 16))
                            .height(60)
                            .make(),
                        20.heightBox,
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Colors: "
                                      .text
                                      .color(darkFontGrey)
                                      .make(),
                                ),
                                Row(
                                  children: List.generate(
                                      3,
                                      (index) => VxBox()
                                          .size(40, 40)
                                          .roundedFull
                                          .color(Vx.randomPrimaryColor)
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .make()),
                                )
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Quantity: "
                                      .text
                                      .color(darkFontGrey)
                                      .make(),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove)),
                                    5.widthBox,
                                    "0"
                                        .text
                                        .size(16)
                                        .color(darkFontGrey)
                                        .fontFamily(bold)
                                        .make(),
                                    5.widthBox,
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add)),
                                    5.widthBox,
                                    "0 available"
                                        .text
                                        .size(16)
                                        .color(darkFontGrey)
                                        .fontFamily(regular)
                                        .make(),
                                  ],
                                )
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child:
                                      "Total: ".text.color(darkFontGrey).make(),
                                ),
                                "\$0.00"
                                    .text
                                    .color(redColor)
                                    .fontFamily(bold)
                                    .size(16)
                                    .make(),
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                          ],
                        ).box.white.shadowSm.make(),
                        10.heightBox,
                        "Description"
                            .text
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        "Dummy Description....".text.color(darkFontGrey).make(),
                        10.heightBox,
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: List.generate(
                              ProductDesTilesList.length,
                              (index) => ListTile(
                                    title: ProductDesTilesList[index]
                                        .text
                                        .fontFamily(bold)
                                        .color(darkFontGrey)
                                        .make(),
                                    trailing: const Icon(Icons.arrow_forward),
                                  )),
                        ),
                        20.heightBox,
                        Productsmaylike.text
                            .size(16)
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                6,
                                (index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          imgP1,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        10.heightBox,
                                        "Laptop"
                                            .text
                                            .fontFamily(regular)
                                            .color(fontGrey)
                                            .make(),
                                        10.heightBox,
                                        "\$600"
                                            .text
                                            .fontFamily(bold)
                                            .color(purple)
                                            .size(15)
                                            .make(),
                                      ],
                                    )
                                        .box
                                        .color(whiteColor)
                                        .margin(const EdgeInsets.symmetric(
                                            horizontal: 4))
                                        .roundedSM
                                        .padding(const EdgeInsets.all(8))
                                        .make()),
                          ),
                        ),
                      ],
                    ),
                  ))),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: Button(
                Color: redColor,
                onpress: () {},
                textColor: whiteColor,
                Title: "Add to Cart"),
          )
        ],
      ),
    );
  }
}
