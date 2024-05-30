import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';



class Biling extends StatelessWidget {

  final String title;
  final String amount;

  const Biling({
    super.key, required this.title, required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Text(
          "$amount",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class TotalBiling extends StatelessWidget {

  final String title;
  final String amount;

  const TotalBiling({
    super.key, required this.title, required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Text(
          "$amount",
          style: TextStyle(
            color: KMainColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}