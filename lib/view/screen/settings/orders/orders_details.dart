import 'package:find_my_shop/controller/settings/orders/orders_details_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class OrdersDetails extends StatelessWidget {
  const OrdersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body:GetBuilder<OrdersDetailsController>(
    builder: (controller)=> Container(
        height: Get.height-50,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20 ,left: 20,right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
               child: GoogleMap(
                      mapType: MapType.terrain,
                       markers: controller.markers.toSet(),
                       initialCameraPosition: controller.kGooglePlex!,
                       onMapCreated: (GoogleMapController controllermap) {
                           controller.gmc = controllermap;
                           controller.completercontroller!.complete(controllermap);
    },
    ),
              ),
            ),
            SizedBox(height: 10,),
            Text("Your order is on the way"),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20,left: 20,right: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                     child: Column(
                       children: [
                         Table(
                           children: [
                             TableRow(
                               children: [
                                 Text("Item",textAlign: TextAlign.center,),
                                 Text("Count",textAlign: TextAlign.center,),
                                 Text("Price",textAlign: TextAlign.center,),
                               ]
                             ),
                             TableRow(
                                 children: [
                                   Text("${controller.ordersModel.ordersId}",textAlign: TextAlign.center,),
                                   Text("2",textAlign: TextAlign.center,),
                                   Text("48",textAlign: TextAlign.center,),
                                 ]
                             ),
                             TableRow(
                                 children: [
                                   Text("burger",textAlign: TextAlign.center,),
                                   Text("2",textAlign: TextAlign.center,),
                                   Text("48",textAlign: TextAlign.center,),
                                 ]
                             )
                           ],
                         ),
                         Spacer(),
                         Row(
                           children: [
                             ElevatedButton(onPressed: (){controller.startTracking();}, child: Text("Strart Tracking")),
                             Spacer(),
                             ElevatedButton(onPressed: (){
                               showModalBottomSheet(
                                   isScrollControlled: true,
                                   context: context,
                                   shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                               ),
                               builder: (context) => Container(
                               height: 300,
                               width: Get.width,
                               child: Padding(
                               padding: const EdgeInsets.all(30.0),
                               child: Center(
                               child: Column(
                                 children: [
                                   Text("give this code to delivery"),
                                   Text("2345"),
                                 ],
                               ),
                               )
                               )));
                             }, child: Text("confirme recipt")),
                           ],
                         )
                       ],
                     ),

              ),
            )
          ],
        ),
      ),)
    );
  }
}
