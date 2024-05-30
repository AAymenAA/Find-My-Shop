import 'package:find_my_shop/controller/shops_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/data/model/menu_cat_model.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MenuCatList extends GetView<ShopsControllerImp> {
  const MenuCatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:90,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 30,),
        itemCount: controller.menu_cat.length,
        itemBuilder: (context, index) {
          return MenuCat(
            menuCatModel: MenuCatModel.fromJson(controller.menu_cat[index]),
            i: index,);
        }),
    );
  }
}

class MenuCat extends GetView<ShopsControllerImp> {
  const MenuCat({
    super.key,
    required this.menuCatModel,
    required this.i,
  });

  final MenuCatModel menuCatModel;
  final  int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.onChange(i,menuCatModel.menuCatName!);
      },
      child: Column(
        children: [
          Card(
            color: controller.menuindex == i? KMainColor : null,
            child: Image.network("${AppLink.menucatimg}/${menuCatModel.menuCatImage}",height: 60,width: 60,),
          ),
          Text("${menuCatModel.menuCatName}",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}

