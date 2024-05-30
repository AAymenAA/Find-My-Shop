

import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/data/datasource/remote/shops_data.dart';
import 'package:find_my_shop/data/model/menu_items_model.dart';
import 'package:get/get.dart';

abstract class ShopsController extends GetxController{

  initialData();
  getdata(int selectedShop, String menu_cat_name);
  onChange(int val1,String val2);
  toMenuItemDetails(MenuItemsModel menuitemsmodel);
}

class ShopsControllerImp extends ShopsController{


  List shops = [];
  int? selectedShop;

  int menuindex = 0;


  String menu_cat_name = "popular";


  ShopsData shopsData = ShopsData(Get.find());

  List menu_cat = [];
  List menu = [];

  late StatusRequest statusRequest ;

  @override
  initialData() {
    shops = Get.arguments['shops'];
    selectedShop = Get.arguments['selectedShop'];
    getdata(selectedShop!,menu_cat_name);
  }

  @override
  void onInit() {
    initialData();
  }

  @override
  getdata(selectedShop, menu_cat_name) async{
    menu_cat.clear();
    menu.clear();
    statusRequest = StatusRequest.loading;
    var response = await shopsData.getData(selectedShop, menu_cat_name);
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        menu_cat.addAll(response['menu_cat']);
        menu.addAll(response['menu']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  onChange(val1 , val2) {
    menuindex = val1;
    menu_cat_name=val2;
    getdata(selectedShop!,menu_cat_name);
    update();
  }

  @override
  toMenuItemDetails(menuitemsmodel) {
    Get.toNamed(AppRoute.menuDetails, arguments: {"menuitemsmodel": menuitemsmodel});
  }

}