import 'package:flutter/material.dart';


class ShopInfo extends StatelessWidget {
  const ShopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(Icons.location_on_rounded,size: 20,),
            Text("Location",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Text("Reviews",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            const Icon(Icons.keyboard_arrow_down,),
          ],
        ),
      ],
    );
  }
}