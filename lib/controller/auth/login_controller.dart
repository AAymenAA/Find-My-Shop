import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/data/datasource/remote/auth/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';

abstract class LoginController extends GetxController{

  login();
  toSignup();
  toForgetPassword();
}


class LoginControllerImp extends LoginController{

  GlobalKey<FormState> formstate =  GlobalKey<FormState>();

  StatusRequest statusRequest = StatusRequest.none;

  LoginData loginData =LoginData(Get.find());

  late TextEditingController email ;
  late TextEditingController password ;

  bool isshowpass = true;

  MyServices myServices = Get.find();

  showPassword(){
    isshowpass = isshowpass == true ? false : true;
    update();
  }

  @override
  login() async{
   var formdata = formstate.currentState;
   if(formdata!.validate()){
     statusRequest = StatusRequest.loading;
     update();
     var response = await loginData.postData(email.text,password.text);
     print("================================ controller $response");
     statusRequest = handlingData(response);
     if(statusRequest == StatusRequest.success){
       if(response['status'] == "success"){
         //data.addAll(response['data']);

         myServices.sharedPreferences.setString("id", response['data']['users_id'].toString());
         myServices.sharedPreferences.setString("username", response['data']['users_name']);
         myServices.sharedPreferences.setString("email", response['data']['users_email']);
         myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
         myServices.sharedPreferences.setString("step", "2");
         FirebaseMessaging.instance.subscribeToTopic("users");
         FirebaseMessaging.instance.subscribeToTopic("users${response['data']['users_id'].toString()}");
         Get.offNamed(AppRoute.Home,);
       }else{
         Get.defaultDialog(title: "Warning", middleText: "email or password not correct");
         statusRequest = StatusRequest.failure;
       }
     }
     update();
   }else{print("not valid");}
  }

  @override
  toSignup() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  toForgetPassword() {
   Get.offNamed(AppRoute.forgetPassword);
  }

}