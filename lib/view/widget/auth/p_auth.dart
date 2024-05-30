import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';


class PAuth extends StatelessWidget {
  final String text;
  const PAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(color: KGreyForFont,fontSize: 13),
    );
  }
}
