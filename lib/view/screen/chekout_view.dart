import 'package:find_my_shop/controller/address_controller.dart';
import 'package:find_my_shop/controller/chekout_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/function/valide_input.dart';
import 'package:find_my_shop/core/shared/app_bar.dart';
import 'package:find_my_shop/core/shared/customformfield.dart';
import 'package:find_my_shop/view/widget/chekout_v/Biling.dart';
import 'package:find_my_shop/view/widget/chekout_v/checkout_option.dart';
import 'package:find_my_shop/view/widget/chekout_v/chekout_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Chekout extends StatelessWidget {
  const Chekout({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(CheckoutController());
    return Scaffold(
      body: GetBuilder<CheckoutController>(
        builder: (controllerpage)=>ListView(
        children: [
          Container(
            child: Column(
              children: [
                CustomAppBar2(title: 'mega', subtitle: 'Chekout',),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Text(
                        "Delivery",
                        style: TextStyle(
                          color: KMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),

                      ChechoutOption(title: 'Address', subtitle: controllerpage.address??'constantine ali mendjeli', optiontitle: 'Other', icon: Icons.location_on_rounded, onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                            ),
                            builder: (context) => Container(
                              padding: EdgeInsets.all(20),
                              height: 400,
                              width: Get.width,
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 250,
                                    child: GoogleMap(
                                      mapType: MapType.normal,
                                      initialCameraPosition: controllerpage.kGooglePlex!,
                                      onMapCreated: (GoogleMapController controllermap) {
                                        controllerpage.completercontroller!.complete(controllermap);
                                      },
                                    ),
                                  ),

                                  Spacer(),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(children: [
                                      Icon(Icons.gps_fixed_rounded),
                                      Text("Use my current location"),
                                    ],),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 2,
                                      width: Get.width-40,
                                      color: KMainColor,
                                    ),
                                  ),

                                  InkWell(
                                    onTap: (){
                                      controllerpage.toAddressMap();
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(children: [
                                        Icon(Icons.map),
                                        Text("Choose on the map"),
                                      ],),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        );
                      },),
                      ChechoutOption(title: 'Reciving method', subtitle: 'No extra fees', optiontitle: controllerpage.reciptmthode=="1" ? "Direct" : "delivery", icon: Icons.delivery_dining_rounded, onTap: () {
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap:(){controllerpage.directR();},
                                    child: Container(
                                      width: 100,
                                         height: 50,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(5),
                                           color: KMainColor,
                                         ),
                                        child: Center(child: Text("Direct",style: TextStyle(color: Colors.white),)))),
                                SizedBox(width: 50,),
                                InkWell(
                                    onTap: (){controllerpage.deliveryR();},
                                    child: Container(
                                        width: 100,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: KMainColor,
                                        ),
                                        child: Center(child: Text("Delivery",style: TextStyle(color: Colors.white),)))),
                              ],
                            ),
                          ),
                        )

                        );
                      },),
                      ChechoutOption(title: 'Recipient info', subtitle: controllerpage.phone!, optiontitle: controllerpage.name!, icon: Icons.person, onTap: () {
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
                                child: Column(
                                  children: [
                                    CustomFormField(hint: "Your Name", label: "Name", icon: Icons.drive_file_rename_outline_rounded, controller: controllerpage.namec, valid: (val){return valideInput(val!, 0, 30, 'username');}),
                                    SizedBox(height: 50,),
                                    CustomFormField(hint: "Your Phone", label: "Phone", icon: Icons.phone, controller: controllerpage.phonec, valid: (val){return valideInput(val!, 10, 30, 'phone');}),
                                    SizedBox(height: 40,),
                                    ElevatedButton(onPressed: (){controllerpage.editrecipinfo();}, child: Text("confirme",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: KMainColor,),),
                                  ],
                                ),
                              ),
                            )

                        );
                      },),


                      Text(
                        "Payment",
                        style: TextStyle(
                          color: KMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),


                      ChechoutOption(title: 'Payment Method', subtitle: '', optiontitle: 'Cash', icon: Icons.payment_rounded, onTap: () {
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap:(){controllerpage.directR();},
                                        child: Container(
                                            width: 100,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: KMainColor,
                                            ),
                                            child: Center(child: Text("Cash",style: TextStyle(color: Colors.white),)))),
                                    SizedBox(width: 50,),
                                    InkWell(
                                        onTap: (){controllerpage.deliveryR();},
                                        child: Container(
                                            width: 100,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: KMainColor,
                                            ),
                                            child: Center(child: Text("My Points",style: TextStyle(color: Colors.white),)))),
                                  ],
                                ),
                              ),
                            )

                        );
                      },),
                      ChechoutOption(title: 'Coupon code', subtitle: '', optiontitle: '', icon: Icons.discount, onTap: () {  },),





                      Text(
                        "Billing",
                        style: TextStyle(
                          color: KMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Biling(title: 'Sub-total', amount: '1100 DZ',),
                            Biling(title: 'Delivery', amount: '100 DZ',),
                            TotalBiling(title: 'Net Total', amount: '1200 DZ',),


                            CheckoutButton(onTap: (){controllerpage.checkout();},),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      ),);
  }
}





