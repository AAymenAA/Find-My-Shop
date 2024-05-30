
import 'dart:ui';

import 'package:find_my_shop/controller/auth/signup_controller.dart';
import 'package:find_my_shop/controller/forget_password/verfiy_code_reset_controller.dart';
import 'package:find_my_shop/core/class/handling_data_veiw.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/shared/buttons.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/view/widget/auth/logo_auth.dart';
import 'package:find_my_shop/view/widget/auth/p_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/forget_password/forget_password_controller.dart';
import '../../../../core/shared/customformfield.dart';
import '../../../widget/auth/text_signup_or_login.dart';
import '../../../widget/auth/text_title.dart';

class VerfiyCodeReset extends StatelessWidget {
  const VerfiyCodeReset({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>VerfiyCodeRestControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Verificaiton Code'),
      ),
      body: GetBuilder<VerfiyCodeRestControllerImp>(
        builder: (controller)=> HandlingDataRequst(statusRequest: controller.statusRequest, widget: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: ListView(
            children:  [
              const TitleAuth(text: 'Check Email',),
              const hSpace(2),
              const PAuth(text: 'Please Enter The Digit Code Sent To Your Email'),
              const hSpace(5),
              OtpTextField(
                numberOfFields: 5,
                focusedBorderColor: KMainColor,
                cursorColor: KMainColor,

                borderColor: const Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode){
                  controller.toRestPassword(verificationCode);
                }, // end onSubmit
              ),
            ],
          ),
        ),)

      )
    );
  }
}
