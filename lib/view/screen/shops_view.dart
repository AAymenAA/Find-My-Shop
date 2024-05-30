import 'package:find_my_shop/controller/shops_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/shared/app_bar.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:find_my_shop/view/widget/shop_v/custom_bottome_bar.dart';
import 'package:find_my_shop/view/widget/shop_v/menu_cat_list.dart';
import 'package:find_my_shop/view/widget/shop_v/menu_items.dart';
import 'package:find_my_shop/view/widget/shop_v/shop-info.dart';
import 'package:find_my_shop/view/widget/shop_v/shop_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Shops extends StatelessWidget {
  const Shops({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ShopsControllerImp());
    return Scaffold(
      body: GetBuilder<ShopsControllerImp>(builder: (controller) => Container(
        padding: EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(
          children: [
            CustomAppBar(title: "Back", subtitle: ""),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              height: MediaQuery.of(context).size.height-80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.grey[300],
              ),
              child: Column(
                children: [
                  ShopProfil(),
                  hSpace(1.5),
                  ShopInfo(),
                  Row(
                    children: [
                      hSpace(10),
                      wSpace(1),
                      Text("Menu",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),



                  MenuCatList(),
                  SizedBox(height: 20,),



                  SizedBox(height: 10,),

                  MenuItemsList(),

                  SizedBox(height: 20,),

                  CustomeBottomeBar()

                ],
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}










