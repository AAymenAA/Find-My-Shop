import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/auth/verify_code_signup_data.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';

abstract class VerfiyCodeSignupController extends GetxController{

  checkEmail();
  toSuccessSignup(String verifycode);
}


class VerfiyCodeSignupControllerImp extends VerfiyCodeSignupController{

  VerifycodeSignupData verifycodeSignupData = VerifycodeSignupData(Get.find());

  String? email;

  StatusRequest statusRequest = StatusRequest.none;



  @override
  checkEmail() {

  }

  @override
  toSuccessSignup(verifycode) async{
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifycodeSignupData.postData(email!,verifycode);
    print("================================ controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.successSignup);
      }else{
        Get.defaultDialog(title: "Warning", middleText: "verify code not correct");
        statusRequest = StatusRequest.failure;
        print(statusRequest);
      }
    }
    update();
  }

  @override
  void onInit() {

    email = Get.arguments['email'];

    super.onInit();
  }
  @override
  void dispose() {



    super.dispose();
  }

}