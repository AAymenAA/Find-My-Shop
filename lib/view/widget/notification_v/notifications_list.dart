import 'package:find_my_shop/controller/notifications_controller.dart';
import 'package:find_my_shop/data/model/notifications_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class NotificationList extends GetView<NotificationController> {
  const NotificationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(builder: (controller) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height-100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.grey[200],
      ),
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemCount: controller.notifications.length,
        itemBuilder: (context, index){
          return notificationCard(notificationModel: NotificationModel.fromJson(controller.notifications[index]));
        },),
    ));
  }
}

class notificationCard extends GetView<NotificationController> {
  const notificationCard( {
    super.key,
    required this.notificationModel,
  });
  final NotificationModel notificationModel;


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){

      },
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("${notificationModel.notificationTitle}"),
                    Spacer(),
                    Text("${Jiffy.parse(notificationModel.notificationDatetime!).fromNow()}")
                  ],
                ),

                Text("${notificationModel.notificationBody}"),
              ],
            ),
          )
      ),
    );
  }
}