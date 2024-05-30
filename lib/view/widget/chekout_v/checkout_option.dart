import 'package:find_my_shop/core/constant/colors.dart';
import 'package:flutter/material.dart';


class ChechoutOption extends StatelessWidget {

  final String title;
  final String subtitle;
  final String optiontitle;
  final IconData icon;
  final void Function() onTap;

  const ChechoutOption({
    super.key, required this.title, required this.subtitle, required this.optiontitle, required this.icon, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Icon(icon),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: KMainColor,
                ),
              ),
              Container(
                width: 200,
                child: Text(
                  "$subtitle",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              InkWell(
                onTap: onTap,
                child: Row(
                  children: [
                    Text(
                      "$optiontitle",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios_rounded,size: 13,)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
