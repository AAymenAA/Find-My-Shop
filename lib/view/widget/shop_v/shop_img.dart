import 'package:find_my_shop/controller/shops_controller.dart';
import 'package:find_my_shop/data/model/shops_model.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ShopProfil extends GetView<ShopsControllerImp> {
  const ShopProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ShopImg(shopsModel: ShopsModel.fromJson(controller.shops[controller.selectedShop!]),),
    );
  }
}


class ShopImg extends GetView<ShopsControllerImp> {
  const ShopImg( {
    super.key,
    required this.shopsModel,
  });

  final ShopsModel shopsModel ;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "${AppLink.shopsimg}/${shopsModel.shopsImage}",
      width: double.infinity,
      height: 130,
      fit: BoxFit.cover,
    );
  }
}