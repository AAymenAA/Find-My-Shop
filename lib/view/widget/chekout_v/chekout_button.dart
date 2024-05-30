import 'package:find_my_shop/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutButton extends StatelessWidget {
  final void Function() onTap;
  const CheckoutButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 100),
        width: Get.width*0.75,
        height: 60,
        decoration: BoxDecoration(
          color: KMainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Place The Order",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}