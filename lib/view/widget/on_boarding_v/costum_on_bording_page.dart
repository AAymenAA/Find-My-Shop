
import 'package:find_my_shop/core/constant/images.dart';
import 'package:find_my_shop/core/constant/texts.dart';
import 'package:find_my_shop/view/widget/on_boarding_v/on_boarding_items.dart';
import 'package:flutter/material.dart';

class CostumOnboardingPage extends StatelessWidget {
  const CostumOnboardingPage({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnBoardingItem(title: onboardTitel1,subTitle: onboardText1,image: ImageAsset.onboard1,),
        OnBoardingItem(title: onboardTitel2,subTitle: onboardText2,image: ImageAsset.onboard2,),
        OnBoardingItem(title: onboardTitel3,subTitle: onboardText3,image: ImageAsset.onboard3,),
      ],
    );
  }
}
