import 'dart:ui';

import 'package:find_my_shop/controller/auth/signup_controller.dart';
import 'package:find_my_shop/core/class/handling_data_veiw.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/function/valide_input.dart';
import 'package:find_my_shop/core/shared/buttons.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/view/widget/auth/logo_auth.dart';
import 'package:find_my_shop/view/widget/auth/p_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/forget_password/forget_password_controller.dart';
import '../../../../controller/forget_password/reset_password_controller.dart';
import '../../../../core/shared/customformfield.dart';
import '../../../widget/auth/text_signup_or_login.dart';
import '../../../widget/auth/text_title.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Reset Password'),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(builder: (controller)=>
          HandlingDataRequst(statusRequest: controller.statusRequest, widget: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const TitleAuth(
                    text: 'New Password',
                  ),
                  const hSpace(2),
                  const PAuth(text: 'Please Enter New Password'),
                  const hSpace(5),
                  CustomFormField(
                    valid: (val) {
                      return valideInput(val!,6,30,"password");
                    },
                    controller: controller.password,
                    hint: 'Enter Your New Password',
                    label: 'Password',
                    icon: Icons.lock_outlined,
                  ),
                  hSpace(3),
                  CustomFormField(
                    valid: (val) {
                      return valideInput(val!,6,30,"password");
                    },
                    controller: controller.repassword,
                    hint: 'Re Enter Your New Password',
                    label: 'Confirme Password',
                    icon: Icons.lock_outlined,
                  ),
                  const hSpace(3),
                  CustomGeneralButton(
                      text: 'Reset',
                      onPressed: () {
                        controller.toSuccessResetPassword();
                      }),
                ],
              ),
            ),
          ),)
          )
    );
  }
}
