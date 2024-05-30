
import 'package:find_my_shop/core/constant/size_config.dart';
import 'package:find_my_shop/core/localization/changelocal.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/routes.dart';
import 'package:find_my_shop/test.dart';
import 'package:find_my_shop/view/screen/auth/login_view.dart';
import 'package:find_my_shop/view/screen/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'binding/initial_binding.dart';
import 'core/localization/translation.dart';
import 'view/screen/language.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initialServices();


  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      initialBinding: InitialBinding(),
      theme: ThemeData(
        fontFamily:  GoogleFonts.spaceGrotesk().fontFamily,
         textTheme: const TextTheme(


         ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: routes,
    );
  }
}

