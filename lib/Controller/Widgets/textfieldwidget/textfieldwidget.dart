import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? text;
  final Color color;
  final double size;
  final Widget? preIcon;
  final Widget? suffixIcon;
  final FontWeight? fontweight;
  const TextFieldWidget({super.key,required this.preIcon,required this.text,required this.color,required this.size,
  required this.fontweight,required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: preIcon,
        suffixIcon: suffixIcon,
        hintText: text,
        hintStyle: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontweight,
        )
      ),
    );      
  }
}