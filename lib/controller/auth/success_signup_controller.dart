import 'package:find_my_shop/core/constant/routes.dart';
import 'package:get/get.dart';


abstract class SuccessSignupController extends GetxController{
  toLoginPage();
}

class SuccessSignupControllerImp extends SuccessSignupController{
  @override
  toLoginPage() {
    Get.offNamed(AppRoute.login);
  }

}