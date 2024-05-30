import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/auth/signup_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';

abstract class SignupController extends GetxController{

  Signup();
  toLogin();
}


class SignupControllerImp extends SignupController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username ;
  late TextEditingController phone ;
  late TextEditingController email ;
  late TextEditingController password ;

   StatusRequest statusRequest = StatusRequest.none ;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  Signup() async{
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(username.text,phone.text,email.text,password.text);
      print("================================ controller $response");
      statusRequest = handlingData(response);
      if(statusRequest == StatusRequest.success){
        if(response['status'] == "success"){
          //data.addAll(response['data']);
          Get.offNamed(AppRoute.VerfiyCodeSignup, arguments: {"email": email.text});
        }else{
          Get.defaultDialog(title: "Warning", middleText: "phone number or email exist");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }else{print('not valid');}

  }

  @override
  toLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

}