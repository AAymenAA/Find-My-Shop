import 'package:find_my_shop/controller/shops_controller.dart';
import 'package:find_my_shop/data/model/menu_items_model.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MenuItemsList extends GetView<ShopsControllerImp> {
  const MenuItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:200,
      width: double.infinity,
      child: ListView.separated(

        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 30,),
        itemCount: controller.menu.length,
        itemBuilder: (context, index) =>
            MenuItems(menuItemsModel: MenuItemsModel.fromJson(controller.menu[index]),),
      ),
    );
  }
}

class MenuItems extends GetView<ShopsControllerImp> {
  const MenuItems( {
    super.key,
    required this.menuItemsModel,
  });

  final MenuItemsModel menuItemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Stack(

          children: [



            Positioned(
              top: 35,
              left: 20,
              child: InkWell(
                onTap: (){
                    controller.toMenuItemDetails(menuItemsModel);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height:150,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[ BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(0,0),
                        blurRadius: 20,
                        spreadRadius:1,
                      ),]
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 70,),
                      Text("${menuItemsModel.menuName}",style: TextStyle(fontWeight: FontWeight.bold,)),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("${menuItemsModel.menuPrice}",style: TextStyle(fontWeight: FontWeight.bold),),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
                top: 0,
                left: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network("${AppLink.inmenuimg}/${menuItemsModel.menuImage}",height: 100,width: 100,fit: BoxFit.cover,))),


          ]),
    );
  }
}