
import 'package:find_my_shop/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  
  @override
  void initState() {
    super.initState();
    animationController =AnimationController(vsync: this , duration:const Duration(milliseconds: 800));
    fadingAnimation = Tween<double>(begin: .2 ,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FadeTransition(
          opacity: fadingAnimation!,
          child: const SvgPicture(
            height: 150,
            width: 150,
            SvgAssetLoader('assets/images/SPlogo.svg',),
          ),
        ),
      ),
    );
  }
}

void goToNextView() {
  Future.delayed(const Duration(seconds: 3),(){
     Get.offNamed(AppRoute.language);

  });
}
