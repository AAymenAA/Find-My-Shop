import 'package:find_my_shop/controller/settings/orders/orders_controller.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

requestPermissionNotification()async{
  NotificationSettings settings = await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
}

fcmconfig(){
  FirebaseMessaging.onMessage.listen((message) {
     print("===============notification=============");
     print(message.notification!.title);
     print(message.notification!.body);
     Get.snackbar(message.notification!.title!,message.notification!.body!);
     refrshPageNotification(message.data);
  });
}

refrshPageNotification(data){
if(Get.currentRoute == "/orders" && data['pagename'] == "refreshorderpend"){
  OrdersController controller = Get.find();
  controller.refreshP();
}

}