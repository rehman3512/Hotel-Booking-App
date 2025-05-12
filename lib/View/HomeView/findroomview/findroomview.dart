import 'package:flutter/material.dart';
import 'package:hotel_booking_app/Controller/Widgets/alternativebutton/alternativebutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/textformwidget/textformwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';

class FindRoomView extends StatefulWidget {
  const FindRoomView({super.key});

  @override
  State<FindRoomView> createState() => _FindRoomViewState();
}

class _FindRoomViewState extends State<FindRoomView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(children: [
          Textwidget(text: "Find room", color: AppColors.blackColor, fontsize: 20,
           fontweight: FontWeight.w600),
        ],),
        TextFormWidget(
                  prefixicon: Icon(Icons.location_on_outlined,color: AppColors.blueColor,), 
                  text: "Where do you want", color: AppColors.blackColor,
                   size: 18, fontweight: FontWeight.w400),
                   Row(
                     children: [
                       TextFormWidget(
                         prefixicon: Icon(Icons.email_outlined,color: AppColors.blueColor,), 
                         text: "Checkin date & time", color: AppColors.blackColor,
                       size: 18, fontweight: FontWeight.w400),
                       Spacer(),
                     ],
                   ),
                   Row(
                     children: [
                       TextFormWidget(
                         prefixicon: Icon(Icons.email_outlined,color: AppColors.blueColor,), 
                         text: "Checkin date & time", color: AppColors.blackColor,
                       size: 18, fontweight: FontWeight.w400),
                       Spacer(),
                     ],
                   ),
                   Row(
                     children: [
                       TextFormWidget(
                         prefixicon: Icon(Icons.email_outlined,color: AppColors.blueColor,), 
                         text: "Checkin date & time", color: AppColors.blackColor,
                       size: 18, fontweight: FontWeight.w400),
                       Spacer(),
                     ],
                   ),
                   Row(children: [],),
                   AlternativeButton(color: AppColors.blueColor, text: "Search")
      ],),
    );
  }
}