import 'package:find_my_shop/controller/notifications_controller.dart';
import 'package:find_my_shop/view/widget/notification_v/notifications_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(NotificationController());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Notifications")),
      ),
      body:  NotificationList(),

    );
  }
}
