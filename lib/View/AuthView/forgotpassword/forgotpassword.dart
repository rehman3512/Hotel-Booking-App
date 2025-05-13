import 'package:flutter/material.dart';
import 'package:hotel_booking_app/Controller/Widgets/alternativebutton/alternativebutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/textformwidget/textformwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Stack(children: [
        Container(
          height: double.infinity, width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.greenColor,
              AppColors.navyBlueColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
            ),
          ),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Textwidget(text: "Forgot Password?", color: AppColors.whiteColor, fontsize: 28,
               fontweight: FontWeight.w500),
            ),
             Container(height: 650,
             margin: EdgeInsets.all(15),
             decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(30),
             ), child: Padding(
               padding: const EdgeInsets.all(15),
               child: Column(children: [
                SizedBox(height: 40,),
                Textwidget(text: "Please enter your registered email \n address to recover your password", 
                color: AppColors.greyColor, fontsize: 18, fontweight: FontWeight.w600),
                SizedBox(height: 40,),
                   TextFormWidget(
                  prefixicon: Icon(Icons.email_outlined,color: AppColors.blueColor,), 
                  text: "Email", color: AppColors.blackColor,
                   size: 18, fontweight: FontWeight.w400),
                   SizedBox(height: 30,),
                   AlternativeButton( text: "Submit"),
                   SizedBox(height: 100,),
               ],),
             ),
             ),
          ],
          ),
        )
      ],) 
    );
  }
}