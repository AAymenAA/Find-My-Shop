import 'package:find_my_shop/core/constant/size_config.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hSpace(SizeConfig.defaultSize!*2),
        Image.asset(
          image!,
          width: SizeConfig.defaultSize!*30,
          height: SizeConfig.defaultSize!*30,
        ),
        hSpace(1),
        Text(
          title!,

        ),
        hSpace(1),
        Text(
          subTitle!,

          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
