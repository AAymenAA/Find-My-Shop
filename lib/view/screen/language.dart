import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/localization/changelocal.dart';
import 'package:find_my_shop/core/shared/buttons.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr),
            const hSpace(5),
            CustomGeneralButton(
              text: 'Ar',
              onPressed: () {
                controller.changeLang("ar");
                Get.offNamed(AppRoute.onboarding);
              },
            ),const hSpace(2),

            CustomGeneralButton(
              text: 'En',
              onPressed: () {
                controller.changeLang("en");
                Get.offNamed(AppRoute.onboarding);
              },
            ),
            const hSpace(2),
            CustomGeneralButton(
              text: 'Fr',
              onPressed: () {
                controller.changeLang("fr");
                Get.offNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
