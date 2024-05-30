import 'dart:async';

import 'package:find_my_shop/core/constant/routes.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class addrescontroller extends GetxController{

  GoogleMapController? gmc;

  LatLng? addresslatlong;

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
  void onInit() {
    getperlocation();
    completercontroller = Completer<GoogleMapController>();
    super.onInit();
  }
}