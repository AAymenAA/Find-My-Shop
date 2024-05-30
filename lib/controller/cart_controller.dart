import 'package:dartz/dartz_streaming.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/data/datasource/remote/cart_data.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CartController extends GetxController{


  List cartmenuitems = [];
  int totalprice = 0;
  int totalcount = 0;

  CartData cartData = CartData((Get.find()));

  late StatusRequest statusRequest ;

  MyServices myServices = Get.find();


  add(String menuitemsid, String menuitemcout, String menuitemprice) async{

    statusRequest = StatusRequest.loading;
    var response = await cartData.addCart(
      myServices.sharedPreferences.getString("id")!, menuitemsid, menuitemcout, menuitemprice
    );
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        Get.rawSnackbar(
          title: "notification",
          message: "add item as successfuly",
        );
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    initialData();
    update();
  }



  remove(String menuitemsid, String menuitemcout, String menuitemprice) async{

    statusRequest = StatusRequest.loading;
    var response = await cartData.removeCart(
        myServices.sharedPreferences.getString("id")!, menuitemsid, menuitemcout, menuitemprice
    );
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        Get.rawSnackbar(
          title: "notification",
          message: "add item as successfuly",
        );
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    initialData();
   update();
  }

  @override
  trash(String menuitemsid) async{

    statusRequest = StatusRequest.loading;
    var response = await cartData.trashCart(
        myServices.sharedPreferences.getString("id")!, menuitemsid
    );
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        Get.rawSnackbar(
          title: "notification",
          message: "add item as successfuly",
        );
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    initialData();
    update();
  }


  getdata() async{
    cartmenuitems.clear();
    statusRequest = StatusRequest.loading;
    var response = await cartData.getData(myServices.sharedPreferences.getString("id")!);
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        cartmenuitems.addAll(response['cartmenuitems']);
        Map  totelresponse = response['totel'];
        totalprice = int.parse(totelresponse['totelprice']);
        totalcount = int.parse(totelresponse['totelitemcount']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  toCheckout(){
    if(cartmenuitems.isEmpty) return Get.snackbar("attention","cart is impty");
    Get.toNamed(AppRoute.chekout, arguments: {
      "pirceorder" : totalprice.toString()
    });
  }


  initialData(){
    getdata();
  }

  void onInit() {
    initialData();
    super.onInit();
  }

  delet(){

  }

  view(){

  }
}