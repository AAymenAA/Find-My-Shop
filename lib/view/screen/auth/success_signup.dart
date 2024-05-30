import 'package:find_my_shop/controller/auth/success_signup_controller.dart';
import 'package:find_my_shop/core/shared/buttons.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/core/shared/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller = Get.put(SuccessSignupControllerImp());
    return Scaffold(
      body: SuccessPage(text: 'successfuly Sign Up',onPressed: (){controller.toLoginPage();},),

    );
  }
}
