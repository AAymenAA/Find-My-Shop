import 'package:find_my_shop/core/shared/buttons.dart';
import 'package:find_my_shop/core/shared/space.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const SuccessPage({
    super.key, required this.text, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline_outlined,
              size: 150,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const hSpace(10),
            CustomGeneralButton(text: 'Done',onPressed: onPressed,),
          ],
        ),
      ),
    );
  }
}