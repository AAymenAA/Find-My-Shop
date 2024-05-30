
import 'dart:ui';

import 'package:find_my_shop/core/class/handling_data_veiw.dart';
import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/colors.dart';
import 'package:find_my_shop/core/function/alert_exit_app.dart';
import 'package:find_my_shop/core/function/valide_input.dart';
import 'package:find_my_shop/core/shared/buttons.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:find_my_shop/view/widget/auth/logo_auth.dart';
import 'package:find_my_shop/view/widget/auth/p_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/shared/customformfield.dart';
import '../../widget/auth/text_signup_or_login.dart';
import '../../widget/auth/text_title.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text('Login'),
      ),
      body: GetBuilder<LoginControllerImp>(
        builder: (controller)=>WillPopScope(
            onWillPop: AlertExitApp,
          child: HandlingDataRequst(statusRequest: controller.statusRequest, widget: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children:  [
                  const LogoAuth(),
                  const TitleAuth(text: 'Welcome Back',),
                  const hSpace(2),
                  const PAuth(text: 'Login With Your Email And Password OR Continue With Social Media'),
                  const hSpace(5),
                  CustomFormField(
                    valid: (val){return valideInput(val!, 5, 100, 'email');},
                    controller: controller.email,
                    hint: 'Enter Your Email',
                    label: 'Email',
                    icon: Icons.email_outlined,
                  ),
                  const hSpace(3),
                  CustomFormField(
                    obscure: controller.isshowpass,
                    onTapIcon: controller.showPassword(),
                    valid: (val){return valideInput(val!, 6, 30, 'password');},
                    controller: controller.password,
                    hint: 'Enter Your Password',
                    label: 'Password',
                    icon: Icons.lock_outlined,
                  ),
                  const hSpace(2),
                  InkWell( onTap: (){controller.toForgetPassword();},child: const Text('Forget Password',textAlign: TextAlign.end,)),
                  const hSpace(2),
                  CustomGeneralButton(text: 'Log In',onPressed: (){controller.login();}),
                  const hSpace(3),
                  TextSignupOrLogin(text1: "Don't have account ? ",text2: "Signup",onTap: (){controller.toSignup();},),
                ],
              ),
            ),
          ),),
          )
      )
    );
  }
}
