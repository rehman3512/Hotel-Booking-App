import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final Widget? prefixicon;
  final String? text;
  final Color color;
  final double size;
  final FontWeight? fontweight;
  const TextFormWidget({super.key,required this.prefixicon,required this.text,
  required this.color,required this.size,required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        labelText: text,
        labelStyle: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontweight,
        )
      ),
    );
  }
}