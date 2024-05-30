import 'package:find_my_shop/controller/home_controller.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class CustomAppBar extends GetView<HomeControllerImp> {

  final String title;
  final String subtitle;

  const CustomAppBar({
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


class CustomAppBar1 extends StatelessWidget {


  const CustomAppBar1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 30,
            ),
          ),


          const Spacer(),

          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              "assets/images/avatar.png",
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),


        ],
      ),
    );
  }
}
class CustomAppBar2 extends StatelessWidget {

  final String title;
  final String subtitle;

  const CustomAppBar2({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 30,
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
                    color: KMainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ],
            ),
          ),
         Spacer(),

        ],
      ),
    );
  }
}
