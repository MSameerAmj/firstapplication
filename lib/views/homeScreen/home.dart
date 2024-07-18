import 'package:firstapplication/consts/consts.dart';
import 'package:firstapplication/controllers/home_controller.dart';
import 'package:firstapplication/views/CartScreen/Cart_Screen.dart';
import 'package:firstapplication/views/ProfileScreen/Account_Screen.dart';
import 'package:firstapplication/views/categoriesScreen/Categories_Screen.dart';
import 'package:firstapplication/views/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var NavBaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var NavBody = [
      const HomeScreen(),
      const CategorieScreen(),
      const CartScreen(),
      const AccountScreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: NavBody.elementAt(controller.CurrNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.CurrNavIndex.value,
          selectedItemColor: purple,
          selectedLabelStyle: const TextStyle(fontFamily: bold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: NavBaritem,
          onTap: (Value) {
            controller.CurrNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}
