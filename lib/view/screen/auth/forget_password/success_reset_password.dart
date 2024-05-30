import 'package:find_my_shop/controller/auth/success_reset_controller.dart';
import 'package:find_my_shop/core/shared/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetControllerImp controller = Get.put(SuccessResetControllerImp());
    return Scaffold(
      body: SuccessPage(text: 'The Password has Been\nReset successfuly',onPressed: (){controller.toLoginPage();},),

    );
  }
}


