import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';


class TitleAuth extends StatelessWidget {
  final String text;
  const TitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(color: KMainColor,fontSize: 20,fontWeight: FontWeight.bold),
    );
  }
}
