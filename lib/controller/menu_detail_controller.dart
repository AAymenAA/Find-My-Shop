import 'package:find_my_shop/controller/cart_controller.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/data/datasource/remote/menudetail_data.dart';
import 'package:find_my_shop/data/model/menu_items_model.dart';
import 'package:get/get.dart';

abstract class MenuDetailsController extends GetxController{
  intialData();
  addToCart(String menuitemsid, String menuitemprice, String menuitemname, String menuitemimg);
}

class MenuDetailsControllerImp extends MenuDetailsController{


  MenuDetailData menuDetailData = MenuDetailData((Get.find()));

  late MenuItemsModel menuItemsModel;

  late StatusRequest statusRequest ;

  MyServices myServices = Get.find();

  @override
  intialData(){
    menuItemsModel = Get.arguments['menuitemsmodel'];
  }

  @override
  addToCart(menuitemsid, menuitemprice, menuitemname, menuitemimg)async{

    statusRequest = StatusRequest.loading;
    var response = await menuDetailData.additem(
        myServices.sharedPreferences.getString("id")!, menuitemsid, menuitemprice, menuitemname, menuitemimg
    );
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        Get.rawSnackbar(
          title: "notification",
          message: "add item as successfuly",
        );
        Get.toNamed(AppRoute.cart);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }



}