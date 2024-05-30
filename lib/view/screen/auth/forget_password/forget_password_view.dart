
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
import '../../../../core/shared/customformfield.dart';
import '../../../widget/auth/text_signup_or_login.dart';
import '../../../widget/auth/text_title.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Forget Password'),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) =>
      HandlingDataRequst(statusRequest: controller.statusRequest, widget: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children:  [
              const TitleAuth(text: 'Chose Email',),
              const hSpace(2),
              const PAuth(text: 'Sign up With Your Email And Password OR Continue With Social Media'),
              const hSpace(5),
              CustomFormField(
                valid: (val){
                  return valideInput(val!, 5, 100, 'email');
                },
                controller: controller.email,
                hint: 'Enter Your Email',
                label: 'Email',
                icon: Icons.phone_outlined,
              ),
              const hSpace(3),
              CustomGeneralButton(text: 'Check',onPressed: (){controller.checkEmail();}),
            ],
          ),
        ),
      ),)
          )
    );
  }
}
