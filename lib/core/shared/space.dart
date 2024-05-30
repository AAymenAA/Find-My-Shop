import 'package:find_my_shop/core/constant/size_config.dart';
import 'package:flutter/material.dart';



class hSpace extends StatelessWidget {
  const hSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeConfig.defaultSize! * value!,);
  }
}


class wSpace extends StatelessWidget {
  const wSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: SizeConfig.defaultSize! * value!,);
  }
}