import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/function/handling_data_controller.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/data/datasource/remote/notifications_data.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController{
  NotificationsData notificationsData = NotificationsData(Get.find());

  MyServices myServices = Get.find();

  late StatusRequest statusRequest ;

  List notifications = [];


  getdata() async{
    notifications.clear();
    statusRequest = StatusRequest.loading;
    var response = await notificationsData.getData(myServices.sharedPreferences.getString("id")!);
    print("=====================Controller $response");
    statusRequest = handlingData(response);
    if(statusRequest == StatusRequest.success){
      if(response['status'] == "success"){
        notifications.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


  void onInit() {
    getdata();
    super.onInit();
  }
}