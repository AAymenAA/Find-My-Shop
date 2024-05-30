import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/forget_password/resetpassword_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{

  ResetPassword();
  toSuccessResetPassword();
}


class ResetPasswordControllerImp extends ResetPasswordController{

  GlobalKey<FormState> formstate =  GlobalKey<FormState>();

  late TextEditingController password ;
  late TextEditingController repassword ;

  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  String? email;

  @override
  ResetPassword() {

  }

  @override
  toSuccessResetPassword() async{
    var formdata = formstate.currentState;
    if(password.text != repassword.text){
      Get.defaultDialog(title: "Warning", middleText: "passwords not match");
    }else if(formdata!.validate()){
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!,password.text);
      print("================================ controller $response");
      statusRequest = handlingData(response);
      if(statusRequest == StatusRequest.success){
        if(response['status'] == "success"){
          //data.addAll(response['data']);
          Get.offNamed(AppRoute.Home,);
        }else{
          Get.defaultDialog(title: "Warning", middleText: "try again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      Get.offNamed(AppRoute.successResetPassword);
    }else{print("not valid");}

  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {

    password.dispose();
    repassword.dispose();
    super.dispose();
  }

}