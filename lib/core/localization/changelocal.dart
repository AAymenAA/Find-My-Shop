import 'dart:ui';

import 'package:find_my_shop/core/function/fcmconfig.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
     Locale? language ;

     MyServices myServices = Get.find();

     changeLang(String langcode){
       Locale locale = Locale(langcode);
       myServices.sharedPreferences.setString("lang", langcode);
       Get.updateLocale(locale);
     }

     @override
  void onInit() {
       requestPermissionNotification();
       fcmconfig();
       String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
       if(sharedPrefLang == "ar"){
         language = const Locale("ar");
       }else if(sharedPrefLang == "en"){
         language = const Locale("en");
       }else if(sharedPrefLang == "fr"){
         language = const Locale("fr");
       }else {
         language = Locale(Get.deviceLocale!.languageCode);
       }
    super.onInit();
  }

}

