import 'package:find_my_shop/controller/home_controller.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/view/widget/home_v/appbareforhome.dart';
import 'package:find_my_shop/view/widget/home_v/categories_liste.dart';
import 'package:find_my_shop/view/widget/home_v/serch_filter.dart';
import 'package:find_my_shop/view/widget/home_v/shops_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(builder: (controller) => Container(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: ListView(
          children: [
            const Column(
              children: [
                CustomAppBarforhome(title: "Location", subtitle: "constantine",),

                hSpace(2),

                CategoriesList(),

                hSpace(1.5),

                SerchFilter(),

                hSpace(2),

                ShopsList(),
              ],
            ),
          ],
        ),
      ),),
    );
  }
}













