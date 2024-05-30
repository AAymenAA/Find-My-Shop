import 'dart:async';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/data/datasource/remote/checkout_data.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CheckoutController extends GetxController{

  CheckoutData checkoutData = Get.put(CheckoutData(Get.find()));

  MyServices myServices = Get.find();

  late StatusRequest statusRequest ;

  late String priceorder;

  String reciptmthode = "1";

  late TextEditingController namec ;
  late TextEditingController phonec ;

  String? name="aymen";
  String? phone="0793450641";


  GoogleMapController? gmc;

  late LatLng addresslatlong = LatLng(position!.latitude, position!.longitude);

  String? address;


  Completer<GoogleMapController>? completercontroller ;

  Position? position;
  CameraPosition? kGooglePlex;



  getcurrentlocation()async{
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude),
      zoom: 14.4746,
    );
    update();
    print("fdssssssssssssssssssssssssssssss");
  }


  getperlocation()async{
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Get.snackbar("worning", "location must be on");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar("worning", "app must get per location");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Get.snackbar("worning", "app dont work without per location");
    }
    return getcurrentlocation();
  }

  getAddressFromLatLang()async{
    try{
      List<Placemark> placemark = await placemarkFromCoordinates(addresslatlong!.latitude, addresslatlong!.longitude);
      address = "${placemark[0].administrativeArea},${placemark[0].subAdministrativeArea},${placemark[0].subLocality},${placemark[0].street}.";
      update();
    }catch(e){
      print(e);
    }
  }

  onMoveUpdat(CameraPosition? position1,addresslatlongcheckout){
    if(addresslatlong != position1!.target){
      addresslatlong = position1.target;
      addresslatlongcheckout = position1.target;
    }
  }


  recenter(){
    gmc!.animateCamera(CameraUpdate.newLatLng(LatLng(position!.latitude, position!.longitude)));
  }

  @override
  backToCheckout() {
    Get.toNamed(AppRoute.chekout);
  }




  @override
  toAddressMap() {
    Get.toNamed(AppRoute.addressMap);
  }

  directR(){
    reciptmthode = "1";
    update();
    Get.back();
  }

  deliveryR(){
    reciptmthode = "2";
    update();
    Get.back();
}

  @override
  void dispose() {
    namec.dispose();
    phonec.dispose();
    super.dispose();
  }

  editrecipinfo(){
    name = namec.text;
    phone = phonec.text;
    update();
    Get.back();
    print("eerer");
  }






  checkout() async{
    statusRequest = StatusRequest.loading;
    Map data = {
      "user_id" : myServices.sharedPreferences.getString("id"),
      "addresslat" : addresslatlong!.latitude.toString(),
      "addresslanth" : addresslatlong!.longitude.toString(),
      "ordertype" : reciptmthode,
      "pricedelivery" : "10",
      "price" : priceorder.toString(),
      "coupon" : "0",
      "pymenttype" : "0",

    };

    var response = await checkoutData.checkout(data);
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        Get.toNamed(AppRoute.Home);
        Get.snackbar("sussece","your order processin");
      }else{
        statusRequest = StatusRequest.failure;
        Get.snackbar("error","try agin");
      }
    }
    update();
  }




  @override
  void onInit() {
    priceorder = Get.arguments['pirceorder'];
    namec = TextEditingController();
    phonec = TextEditingController();
    getperlocation();
    completercontroller = Completer<GoogleMapController>();
    super.onInit();
  }
}