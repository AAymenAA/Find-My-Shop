import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/data/datasource/remote/settings/orders_data.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController{


  late StatusRequest statusRequest ;
  MyServices myServices = Get.find();
  OrdersData ordersData = OrdersData(Get.find());
  String statorder = "0";
  List orderslist = [];

  @override
  getdata(userid, statorder) async{
    orderslist.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersData.getData(userid, statorder);
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        orderslist.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  toPanding() {
    statorder = "0";
    getdata(myServices.sharedPreferences.getString("id")!, statorder);
    update();

  }

  refreshP(){
    getdata(myServices.sharedPreferences.getString("id")!, statorder);
  }

  @override
  toComplet() {
    statorder = "1";
    getdata(myServices.sharedPreferences.getString("id")!, statorder);
    update();

  }

  void onInit() {
    getdata(myServices.sharedPreferences.getString("id")!, statorder);
    super.onInit();
  }



  toOrdersDetails(listdata){
      Get.toNamed(AppRoute.ordersdetails, arguments: {"ordersmodel": listdata});
  }


}