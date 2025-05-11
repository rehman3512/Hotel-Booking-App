import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textwidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontsize;
  final FontWeight? fontweight;
  const Textwidget({super.key,required this.text,required this.color,
  required this.fontsize,required this.fontweight});

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: GoogleFonts.poppins(color: color,fontSize: fontsize,
    fontWeight: fontweight),);
  }
}