import 'package:find_my_shop/core/shared/space.dart';
import 'package:flutter/material.dart';

class SerchFilter extends StatelessWidget {
  const SerchFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),

        InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 1),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [ BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(0,2),
                  blurRadius: 3,
                  spreadRadius: 1,
                ),]
            ),
            child: const Center(child: Text("closest",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
          ),
        ),

        const wSpace(2),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 1),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
              boxShadow: [ BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(0,2),
                blurRadius: 3,
                spreadRadius:1,
              ),]
          ),
          child: const Center(child: Text("dlivery",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
        ),

        const wSpace(2),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 1),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
              boxShadow: [ BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(0,2),
                blurRadius: 3,
                spreadRadius:1,
              ),]
          ),
          child: const Center(child: Text("3+ | 4+ | 4.5+",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
        ),


        const Icon(Icons.star_rate_rounded),

        const Spacer(),
      ],
    );
  }
}