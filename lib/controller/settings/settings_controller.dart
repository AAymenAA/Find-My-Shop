import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{

  MyServices myServices = Get.find();
  loguot(){
    String userid = myServices.sharedPreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
    FirebaseMessaging.instance.unsubscribeFromTopic("users${userid}");
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }



  toOrders(){
    Get.toNamed(AppRoute.orders);
  }
}