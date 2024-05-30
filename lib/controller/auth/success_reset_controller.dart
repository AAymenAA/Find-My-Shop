import 'package:find_my_shop/core/constant/routes.dart';
import 'package:get/get.dart';


abstract class SuccessResetController extends GetxController{
  toLoginPage();
}

class SuccessResetControllerImp extends SuccessResetController{
  @override
  toLoginPage() {
    Get.offNamed(AppRoute.login);
  }

}