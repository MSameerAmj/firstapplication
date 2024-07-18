import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/consts/lists.dart';
import 'package:firstapplication/views/categoriesScreen/categoryproducts.dart';
import 'package:firstapplication/widgets_common/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return background(Scaffold(
      appBar: AppBar(
        title:
            categories.text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categorieimages[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriestitles[index]
                      .text
                      .color(fontGrey)
                      .align(TextAlign.center)
                      .make()
                ],
              )
                  .box
                  .rounded
                  .white
                  .clip(Clip.antiAlias)
                  .outerShadow
                  .make()
                  .onTap(() {
                Get.to(() => Categoryproducts(title: categoriestitles[index]));
              });
            }),
      ),
    ));
  }
}
