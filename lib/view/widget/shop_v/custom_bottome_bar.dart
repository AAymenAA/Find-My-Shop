import 'package:find_my_shop/core/constant/colors.dart';
import 'package:flutter/material.dart';


class CustomeBottomeBar extends StatelessWidget {
  const CustomeBottomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: KMainColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              "assets/images/avatar.png",
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mega",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              Text("service",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            ],
          ),
          Spacer(),
          Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: Icon(Icons.phone_enabled,color: Colors.green,size: 40,)),
        ],
      ),
    );
  }
}