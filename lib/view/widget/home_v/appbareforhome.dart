import 'package:find_my_shop/controller/home_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarforhome extends GetView<HomeControllerImp> {

  final String title;
  final String subtitle;

  const CustomAppBarforhome({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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

        const Spacer(),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: KMainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ],
          ),
        ),

        const Spacer(),

        IconButton(
          onPressed: () {
            controller.toNotifications();
          },
          icon: const Icon(
             Icons.notifications_none_outlined,
            size: 30,
          ),
        ),

        IconButton(
          onPressed: () {
            controller.toSettings();
          },
          icon: const Icon(
            Icons.settings_outlined,
            size: 30,
          ),
        ),
      ],
    );
  }
}