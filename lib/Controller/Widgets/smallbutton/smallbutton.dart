import 'package:flutter/material.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';

class SmallButton extends StatelessWidget {
   final Color color;
  final String text;
  const SmallButton({super.key,required this.color,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45, width: 145,
      decoration: BoxDecoration(
       color: color,
        borderRadius: BorderRadius.circular(12),
      ),child: Center(child: Textwidget(text: text, color: AppColors.whiteColor,
       fontsize: 18, fontweight: FontWeight.w400),),
    );
  }
}