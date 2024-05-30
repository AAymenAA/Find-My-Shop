
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:find_my_shop/core/constant/size_config.dart';
import 'package:find_my_shop/core/services/services.dart';
import 'package:find_my_shop/view/widget/on_boarding_v/costum_on_bording_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../core/shared/buttons.dart';
import 'costum_dots.dart';


class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {

   var pageController=PageController();
   MyServices myServices = Get.find();

   @override
  void initState() {
     pageController = PageController(
       initialPage: 0
     )..addListener(() {
       setState(() {

       });
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        CostumOnboardingPage(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: SizeConfig.defaultSize! * 58,
          child:Center(child: costumDots(pageController: pageController)),
        ),
        Visibility(
          visible: pageController!.hasClients? (pageController.page == 2 ? false : true) : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: GestureDetector(
              onTap: (){
                pageController?.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn) ;
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          top: SizeConfig.defaultSize! * 63,
            child: CustomGeneralButton(
              text: pageController!.hasClients? (pageController.page == 2 ? 'Get started' : 'Next') : 'Next',
              onPressed: (){
                if(pageController!.page! < 2){
                  pageController?.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  myServices.sharedPreferences.setString("step", "1");
                  Get.offNamed(AppRoute.login);
                }
              },
            )
        ),
      ],
    );
  }
}


