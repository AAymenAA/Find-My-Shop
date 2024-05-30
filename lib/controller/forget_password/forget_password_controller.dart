import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/forget_password/checkemail_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{

  checkEmail();
}


class ForgetPasswordControllerImp extends ForgetPasswordController{
  GlobalKey<FormState> formstate =  GlobalKey<FormState>();

  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  late TextEditingController email ;

  StatusRequest statusRequest = StatusRequest.none;


  @override
  checkEmail() async{
     if(formstate.currentState!.validate()){
       statusRequest = StatusRequest.loading;
       update();
       var response = await checkEmailData.postData(email.text);
       print("================================ controller $response");
       statusRequest = handlingData(response);
       if(statusRequest == StatusRequest.success){
         if(response['status'] == "success"){
           //data.addAll(response['data']);
           Get.offNamed(AppRoute.VerfiyCodeRest,arguments: {"email" : email.text});
         }else{
           Get.defaultDialog(title: "Warning", middleText: "email not find");
           statusRequest = StatusRequest.failure;
         }
       }
       update();
     }
  }



  @override
  void onInit() {

    email = TextEditingController();

    super.onInit();
  }
  @override
  void dispose() {

    email.dispose();

    super.dispose();
  }

}