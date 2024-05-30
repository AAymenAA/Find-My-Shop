import 'package:find_my_shop/controller/home_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/constant/size_config.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/data/model/shops_model.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopsList extends GetView<HomeControllerImp> {
  const ShopsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(builder: (controller) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height-212,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.grey[200],
      ),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: controller.shops.length,
        itemBuilder: (context, index){
          return ShopCard(shopsModel: ShopsModel.fromJson(controller.shops[index]), i: index,);
        },),
    ));
  }
}

class ShopCard extends GetView<HomeControllerImp> {
  const ShopCard({
    super.key,
     required this.shopsModel,
     required this.i,
  });
  final ShopsModel shopsModel;
  final int? i;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.toShop(controller.shops , i!);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "${AppLink.shopsimg}/${shopsModel.shopsImage}",
                      width: 150,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("${shopsModel.shopsName}",style: const TextStyle(fontSize: 15,color: KMainColor,fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    children: [
                      const wSpace(1),
                      const Icon(Icons.location_on_rounded,size: 15,),
                      Text("${shopsModel.shopsLocation}",style: const TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text("Open",style: TextStyle(fontSize: 15,color: KMainColor,fontWeight: FontWeight.bold),),
                      Icon(Icons.lock_open_rounded,color: Colors.green,size: 15,),
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Delivery",style: TextStyle(fontSize: 15,color: KMainColor,fontWeight: FontWeight.bold),),
                      Icon(Icons.check_circle_outline,color: Colors.green,size: 15,),
                    ],
                  ),
                  const hSpace(2),
                  Row(
                    children: [
                      const wSpace(1),
                      const Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                      Text("${shopsModel.shopsRate}"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("${shopsModel.shopsReviewCount} Review",style: const TextStyle(fontSize: 10,color: Colors.grey),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}