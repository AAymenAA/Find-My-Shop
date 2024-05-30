
import 'dart:async';
import 'dart:ffi';

import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/settings/orders_details_data.dart';
import 'package:find_my_shop/data/model/orders_model.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class OrdersDetailsController extends GetxController{

  double? lat;
  double? long;


  GoogleMapController? gmc;
  Completer<GoogleMapController>? completercontroller ;

  List<Marker> markers = [];

  CameraPosition? kGooglePlex;

  Location location = new Location();







  late StatusRequest statusRequest ;

  late OrdersModel ordersModel;
  DileveryData dileveryData = DileveryData(Get.find());
  List delevery = [];



  @override
  getdileveryData(orderid) async{
    delevery.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await dileveryData.getdileveryinfo(orderid);
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        delevery.addAll(response['data']);
        lat = delevery[0]['dilevery_address_lat'];
        long = delevery[0]['dilevery_address_long'];
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


  intialData(){
    kGooglePlex = CameraPosition(
      target: LatLng(ordersModel.ordersAddresslat!, ordersModel.ordersAddresslanth!),
      zoom: 14.4746,
    );
    markers.add(Marker(markerId: MarkerId("user"),position: LatLng(ordersModel.ordersAddresslat!, ordersModel.ordersAddresslanth!)));
  }


  startTracking(){
    Timer.periodic(Duration(seconds: 2), (timer) async {
      getdileveryData(ordersModel.ordersId.toString());
      markers.add(Marker(markerId: MarkerId("dilevery"),position: LatLng(lat!, long!)));
      gmc!.animateCamera(CameraUpdate.newLatLng(LatLng(lat!, long!)));
      update();
    });
  }

  @override
  void onInit() {
    ordersModel = Get.arguments['ordersmodel'];
    intialData();
    super.onInit();
  }
}