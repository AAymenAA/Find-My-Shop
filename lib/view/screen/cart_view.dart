import 'package:find_my_shop/controller/cart_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:find_my_shop/view/widget/cart_v/cart_item_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return Scaffold(
      body: GetBuilder<CartController>(builder: (controller) => SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: KMainColor),),
                    Spacer(),
                    Text("Add more +"),
                  ],
                ),
              ),

              CartItemList(),

              SizedBox(height: 60,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Text("items :",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    Spacer(),
                    Text("${controller.totalcount}",style: TextStyle(color: Colors.grey,fontSize: 20,),)
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Text("Delivery charge :",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    Spacer(),
                    Text("£ 10.0",style: TextStyle(color: Colors.grey,fontSize: 20,),)
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Text("Sub Total :",style: TextStyle(color: Colors.grey,fontSize: 20),),
                    Spacer(),
                    Text("£ ${controller.totalprice}",style: TextStyle(color: Colors.grey,fontSize: 20,),)
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 2,
                  width: Get.width,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Text("Total :",style: TextStyle(color: KMainColor,fontSize: 25,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("£ 81",style: TextStyle(color: KMainColor,fontSize: 25,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 60,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: KMainColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: (){controller.toCheckout();},
                    child: Center(
                      child: Text("Place Order",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),),
    );
  }
}

