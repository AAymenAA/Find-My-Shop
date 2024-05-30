





import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/middleware/my_middleware.dart';
import 'package:find_my_shop/view/screen/adress_test.dart';
import 'package:find_my_shop/view/screen/auth/verfiy_code_signup.dart';
import 'package:find_my_shop/view/screen/auth/forget_password/forget_password_view.dart';
import 'package:find_my_shop/view/screen/auth/forget_password/reset_password_view.dart';
import 'package:find_my_shop/view/screen/auth/signup_view.dart';
import 'package:find_my_shop/view/screen/auth/forget_password/success_reset_password.dart';
import 'package:find_my_shop/view/screen/auth/success_signup.dart';
import 'package:find_my_shop/view/screen/auth/forget_password/verfiy_code_reset_view.dart';
import 'package:find_my_shop/view/screen/cart_view.dart';
import 'package:find_my_shop/view/screen/chekout_view.dart';
import 'package:find_my_shop/view/screen/home.dart';
import 'package:find_my_shop/view/screen/language.dart';
import 'package:find_my_shop/view/screen/menudetails.dart';
import 'package:find_my_shop/view/screen/notification_view.dart';
import 'package:find_my_shop/view/screen/on_boarding_view.dart';
import 'package:find_my_shop/view/screen/reviw_view.dart';
import 'package:find_my_shop/view/screen/settings/orders/orders_details.dart';
import 'package:find_my_shop/view/screen/settings/orders/orders_veiw.dart';
import 'package:find_my_shop/view/screen/settings/settings_veiw.dart';
import 'package:find_my_shop/view/screen/shops_view.dart';
import 'package:find_my_shop/view/screen/splash_view.dart';
import 'package:get/get.dart';

import 'view/screen/auth/login_view.dart';

List<GetPage<dynamic>>? routes = [
  //GetPage(name: "/", page: () => Chekout()),

  GetPage(name: "/" ,page: ()=> const SplashView() ,middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: ()=> const LoginView()),
  GetPage(name: AppRoute.signup, page: ()=> const SignupView()),
  GetPage(name: AppRoute.onboarding, page: ()=> const OnBoarding()),
  GetPage(name: AppRoute.language, page: ()=> const Language()),
  GetPage(name: AppRoute.forgetPassword, page: ()=> const ForgetPassword()),
  GetPage(name: AppRoute.VerfiyCodeRest, page: ()=> const VerfiyCodeReset()),
  GetPage(name: AppRoute.resetPassword, page: ()=> const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword, page: ()=> const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignup, page: ()=> const SuccessSignup()),
  GetPage(name: AppRoute.VerfiyCodeSignup, page: ()=> const VerfiyCodeSignup()),

  GetPage(name: AppRoute.Home, page: ()=> const Home()),
  GetPage(name: AppRoute.Shops, page: ()=> const Shops()),
  GetPage(name: AppRoute.menuDetails, page: ()=> const MenuDetails()),
  GetPage(name: AppRoute.cart, page: ()=> const Cart()),
  GetPage(name: AppRoute.chekout, page: ()=> const Chekout()),
  GetPage(name: AppRoute.addressMap, page: ()=> const address()),

  GetPage(name: AppRoute.settings, page: ()=> const Settings()),
  GetPage(name: AppRoute.orders, page: ()=> const Orders()),
  GetPage(name: AppRoute.ordersdetails, page: ()=> const OrdersDetails()),


  GetPage(name: AppRoute.notiftications, page: ()=> const Notification()),
];

