import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? text;
  final Color color;
  final double size;
  final FontWeight? fontweight;
  const TextFieldWidget({super.key,required this.text,
  required this.color,required this.size,required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
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