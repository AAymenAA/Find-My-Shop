import 'package:find_my_shop/controller/settings/orders/orders_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/view/widget/settings_v/orders_v/orders_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    OrdersController controller = Get.put(OrdersController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: (){controller.toPanding();},
                      child: Container(
                        padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: KMainColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text("Panding Orders",style: TextStyle(color: Colors.white),))),
                  Spacer(),
                  InkWell(
                      onTap: (){controller.toComplet();},
                      child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: KMainColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text("Complerted Orders",style: TextStyle(color: Colors.white),))),
                ],
              ),

              OrdersList(),


            ],
          ),
        ),
      ),
    );
  }
}
