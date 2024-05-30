import 'package:find_my_shop/controller/home_controller.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/data/model/categories_model.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesList extends GetView<HomeControllerImp> {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: controller.statusRequest != StatusRequest.loading?(controller.categories.length*60)+(controller.categories.length*40)-40:1,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 40,),
        itemCount: controller.categories.length,
        itemBuilder: (context, index){
          return Categories(categoriesModel: CategoriesModel.fromJson(controller.categories[index]), i: index,);
        },),
    );
  }
}

class Categories extends GetView<HomeControllerImp> {
  const Categories({
    super.key,
     required this.categoriesModel,
    required this.i,
  });

  final CategoriesModel categoriesModel;
  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.changeCat(i);
      },
      child: Container(
        height:60,
        width: 60,
        decoration: BoxDecoration(
            color: KMainColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow:[ BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(0,4),
              blurRadius: 5,
              spreadRadius:1,
            ),]
        ),
        child: Image.network("${AppLink.categoriesimg}/${categoriesModel.categoriesImage}"),
      ),
    );
  }
}
