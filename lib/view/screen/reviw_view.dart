import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/shared/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reviw extends StatelessWidget {
  const Reviw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
       children: [
         CustomAppBar(title: "3.5",subtitle:"125 Review",),
         SizedBox(
           width: double.infinity,
           height: Get.height-100,
           child: ListView(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),




               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),




               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),





               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),




               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),




               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),






               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),






               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Container(
                   height: 150,
                   width: Get.width-50,
                   decoration: BoxDecoration(
                     color: KMainColor,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(35),
                               child: Image.asset(
                                 "assets/images/avatar.png",
                                 width: 70,
                                 height: 70,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             Spacer(),
                             Icon(CupertinoIcons.smiley,color: Colors.white,),
                           ],
                         ),
                       ),

                       SizedBox(
                         width: 250,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_rate_rounded,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                   Icon(Icons.star_border_outlined,color: Colors.yellowAccent,size: 40,),
                                 ],
                               ),
                               Spacer(),
                               Text("Munch & Go offers quick bites Prices are moderate, taste id average. A convenuent choice for a speedy snack",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                               Spacer(),
                               Row(
                                 children: [
                                   SizedBox(width: 1,),
                                   Spacer(),
                                   Text("2 min left",style: TextStyle(color: Colors.white),),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),

             ],
           ),
         )
       ],
     ),
    );
  }
}
