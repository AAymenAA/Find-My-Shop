import 'package:find_my_shop/controller/address_controller.dart';
import 'package:find_my_shop/controller/chekout_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class address extends StatelessWidget {
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CheckoutController());
    return Scaffold(
      body: GetBuilder<CheckoutController>(
        builder: (controllerpage)=>Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  GoogleMap(
                    mapType: MapType.terrain,
                    zoomControlsEnabled: false,
                    initialCameraPosition: controllerpage.kGooglePlex!,
                    onMapCreated: (GoogleMapController controllermap) {
                      controllerpage.gmc = controllermap;
                      controllerpage.completercontroller!.complete(controllermap);
                    },
                    onCameraMove: (CameraPosition? position,){
                     controllerpage.onMoveUpdat(position,controllerpage.addresslatlong);
                    },
                    onCameraIdle: (){
                      controllerpage.getAddressFromLatLang();
                    },
                  ),

                  Center(
                    child: Image.asset("assets/images/picker.png",width: 40,),
                  ),

                  Positioned(
                      bottom: 20,
                      right: 20,
                      child: FloatingActionButton(onPressed: (){controllerpage.recenter();},child: Icon(Icons.gps_fixed_rounded),)),
                ],
              ),
            ),


            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Choose your destination"),
                      Spacer(),
                      Text(controllerpage.address ?? "selected location"),
                      Spacer(),
                      ElevatedButton(onPressed: (){controllerpage.backToCheckout();}, child: Text("Confirme",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                        backgroundColor: KMainColor,
                      ),),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),

        ),
    );
  }
}
