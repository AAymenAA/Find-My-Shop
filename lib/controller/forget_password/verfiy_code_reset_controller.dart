import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/forget_password/verify_code_forgetpassword_data.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeRestController extends GetxController{

  checkCode();
  toRestPassword(verifycode);
}


class VerfiyCodeRestControllerImp extends VerfiyCodeRestController{

  String? email;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData = VerifyCodeForgetPasswordData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;


  @override
  checkCode() {

  }

  @override
  toRestPassword(verifycode) async{
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeForgetPasswordData.postData(email!,verifycode);
    print("================================ controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.resetPassword, arguments: {"email": email});
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


}