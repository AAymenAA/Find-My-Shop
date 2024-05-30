import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

import '../core/function/handling_data_controller.dart';

class TestConstroller extends GetxController{

  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest ;

  getData()async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
   @override
  void onInit() {
    getData();
    super.onInit();
  }
}