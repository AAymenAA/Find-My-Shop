import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/data/datasource/remote/home_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController{
  initialData();
  getdata(int categoryid);
  toShop(List shops ,int selectedShop);
  changeCat(int catval);
  toSettings();
}

class HomeControllerImp extends HomeController{

  MyServices myServices = Get.find();

  String? username;
  String? id;
  int catid = 0;

  HomeData homedata = HomeData(Get.find());

  List categories = [];
  List shops = [];

  late StatusRequest statusRequest ;

  @override
  initialData(){
    username  = myServices.sharedPreferences.getString("username");
    id  = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    initialData();
    getdata(catid);
    super.onInit();
  }

  @override
  getdata(categoryid) async{
    categories.clear();
    shops.clear();
    statusRequest = StatusRequest.loading;
    var response = await homedata.getData(categoryid);
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        categories.addAll(response['categories']);
        shops.addAll(response['shops']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  toShop(shops , selectedShop) {
    Get.toNamed(AppRoute.Shops , arguments: {
      "shops" : shops,
      "selectedShop" : selectedShop,
    });
  }

  @override
  changeCat(int catval) {
    catid = catval;
    getdata(catid);
    update();

  }

  @override
  toSettings() {
    Get.toNamed(AppRoute.settings);
  }


  @override
  toNotifications() {
    Get.toNamed(AppRoute.notiftications);
  }

}