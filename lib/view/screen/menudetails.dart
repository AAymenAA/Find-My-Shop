import 'package:find_my_shop/controller/menu_detail_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/link_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MenuDetails extends StatelessWidget {
  const MenuDetails({super.key,});

  @override
  Widget build(BuildContext context) {
    MenuDetailsControllerImp controller = Get.put(MenuDetailsControllerImp());
    return Scaffold(
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: double.infinity,
         color: KMainColor,
         child: Column(
           children: [
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: CustomAppbar3(favorite: true,),
                 ),
                Spacer(),
             Container(
               height: (MediaQuery.of(context).size.height/4)*3,
               width: double.infinity,
               child: Stack(
                 clipBehavior: Clip.none,
                 children: [
                   Column(
                     children: [
                       SizedBox(height: 1,),
                       Spacer(),
                       Container(
                         padding: EdgeInsets.all(10),
                         height: (MediaQuery.of(context).size.height/2)+50,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                           color: Colors.white,
                         ),

                         child: ListView(
                           children: [
                             Column(
                               children: [
                                 SizedBox(height: 130,),
                                  Text("${controller.menuItemsModel.menuName}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                 SizedBox(height: 30,),
                                 Row(
                                   children: [
                                     Spacer(),
                                     Icon(Icons.local_fire_department,color: Colors.orange,),
                                     Column(
                                       children: [
                                         Text("223"),
                                         Text("Calories"),
                                       ],
                                     ),
                                     Spacer(),
                                     Icon(Icons.favorite,color: Colors.red,),
                                     Column(
                                       children: [
                                         Text("157"),
                                         Text("Liles"),
                                       ],
                                     ),
                                     Spacer(),
                                   ],
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(30.0),
                                   child: Text("burger with checken and doubl chees tomato and salade and onionand pepperthis plat come with some french fries and some sauce",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 20),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       InkWell(
                                         onTap: (){
                                           controller.addToCart(controller.menuItemsModel.menuId.toString(), controller.menuItemsModel.menuPrice.toString(), controller.menuItemsModel.menuName!, controller.menuItemsModel.menuImage!);
                                         },
                                         child: Container(
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(5),
                                             color: KMainColor,
                                           ),
                                           height: 40,
                                           width: 150,
                                           child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                         ),
                                       ),
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                   Positioned(
                     left: (MediaQuery.of(context).size.width-300)/2,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(150),
                       child: Image.network(
                         "${AppLink.inmenuimg}/${controller.menuItemsModel.menuImage}",
                         width: 300,
                         height: 300,
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                 ],
               ),
             )
           ],
         ),
       ),
    );
  }
}

class CustomAppbar3 extends StatelessWidget {

  final bool favorite;

  const CustomAppbar3({
    super.key, required this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey,
            ),
            child: Icon(Icons.arrow_back_ios,color: KMainColor,)
        ),
        Spacer(),
        Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey,
            ),
            child: Icon(favorite ? Icons.favorite : Icons.favorite_outline),
        ),
      ],
    );
  }
}
