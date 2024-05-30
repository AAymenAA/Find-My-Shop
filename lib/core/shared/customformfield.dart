import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomFormField extends StatelessWidget {
  final String hint;
  final String label;
  final IconData icon;
  final TextEditingController controller;
  final String? Function(String?) valid;
  final bool? obscure;
  final void Function()? onTapIcon;
  const CustomFormField({super.key, required this.hint, required this.label, required this.icon, required this.controller, required this.valid,  this.obscure, this.onTapIcon, });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure == null || obscure == false ? false : true,
      validator: valid,
      controller: controller,
      cursorColor: KMainColor,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 25,
          ),
          floatingLabelStyle: const TextStyle(
            color: KMainColor,
            fontSize: 18,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 12,
          ),
          label: Container(padding: const EdgeInsets.symmetric(horizontal: 15),child:  Text(label)),
          labelStyle: const TextStyle(fontSize: 16),
          suffixIcon:  InkWell(onTap: onTapIcon, child: Icon(icon,size: 20,),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: KMainColor,width: 2)
          )

      ),
    );
  }
}
