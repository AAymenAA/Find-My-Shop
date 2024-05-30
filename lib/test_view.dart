import 'package:find_my_shop/controller/test_controller.dart';
import 'package:find_my_shop/core/class/handling_data_veiw.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestConstroller());
    return Scaffold(
      appBar: AppBar(title: const Text('title'),),
      body: GetBuilder<TestConstroller>(builder: (controller){
        return HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context , index){
            return Text("${controller.data}");
          },
        ),);
      },),
    );
  }
}
