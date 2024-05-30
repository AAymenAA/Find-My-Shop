import 'package:find_my_shop/controller/cart_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/data/model/cartmenuitemsmodel.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CartItemList extends GetView<CartController> {
  const CartItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: Get.width,
      height: 400,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: controller.cartmenuitems.length,
        itemBuilder: (context, index){
          return CartItems(cartMenuItemsModl: CartMenuItemsModl.fromJson(controller.cartmenuitems[index]));
        },),
    );
  }
}

class CartItems extends GetView<CartController> {
  const CartItems( {
    required this.cartMenuItemsModl,
    super.key,
  });

  final CartMenuItemsModl cartMenuItemsModl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(20),
      ),
      child: Container(
        height: 120,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.network("${AppLink.inmenuimg}/${cartMenuItemsModl.cartMenuitemimg}",
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${cartMenuItemsModl.cartMenuitemname}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: KMainColor,)),
                    SizedBox(height: 10,),
                    Text("£ ${cartMenuItemsModl.cartMenuitemprice}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: KMainColor,)),
                  ],
                ),
              ),

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          controller.trash(cartMenuItemsModl.cartMenuitemid.toString());
                        },
                          child: Icon(CupertinoIcons.trash,color: Colors.red,)
                      ),

                      Spacer(),

                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap:(){
                                  controller.add(cartMenuItemsModl.cartMenuitemid.toString(), cartMenuItemsModl.itemcount.toString(), cartMenuItemsModl.cartMenuitemprice.toString());
                                },
                                  child: Icon(Icons.add)
                              ),
                              Spacer(),
                              Text("${cartMenuItemsModl.itemcount}"),
                              Spacer(),
                              InkWell(
                                  onTap:(){
                                    controller.remove(cartMenuItemsModl.cartMenuitemid.toString(), cartMenuItemsModl.itemcount.toString(), cartMenuItemsModl.cartMenuitemprice.toString());
                                  },
                                   child: Icon(Icons.remove)
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
