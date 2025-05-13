import 'package:flutter/material.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/smallbutton/smallbutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/textfieldwidget/textfieldwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';

class VerifyAccount extends StatefulWidget {
  const VerifyAccount({super.key});

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Stack(children: [
        Container(
          height: double.infinity,width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.greenColor,
              AppColors.navyBlueColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
          ),child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Textwidget(text: "Verify Account", color: AppColors.whiteColor, fontsize: 28,
           fontweight: FontWeight.w600),
           SizedBox(height: 20,),
           Container( height: 650,
           margin: EdgeInsets.all(15),
           decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(15)
           ), child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(children: [
              Textwidget(text: "VERIFY MOBILE NUMBER", color: AppColors.blackColor,
               fontsize: 18, fontweight: FontWeight.w600),
               SizedBox(height: 20,),
               Textwidget(text: "OTP has sent to you on \n your mobile number,please enter it below",
                color: AppColors.greyColor, fontsize: 16, fontweight: FontWeight.w600),
                SizedBox(height: 20,),
                // Row( mainAxisSize: MainAxisSize.min,
                //   children: [
                //   TextFieldWidget(text: "5", color: AppColors.blackColor, size: 18,
                //    fontweight: FontWeight.w600),
                //    TextFieldWidget(text: "5", color: AppColors.blackColor, size: 18,
                //    fontweight: FontWeight.w600),
                //    TextFieldWidget(text: "3", color: AppColors.blackColor, size: 18,
                //    fontweight: FontWeight.w600),
                //    TextFieldWidget(text: "5", color: AppColors.blackColor, size: 18,
                //    fontweight: FontWeight.w600),
                // ],),
                Textwidget(text: "Don't recievet otp?", color: AppColors.greyColor,
                 fontsize: 14, fontweight: FontWeight.w400),
                 SizedBox(height: 10,),
                 Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallButton(color: AppColors.greenColor, text: "Resend in 30s"),
                    SizedBox(width: 10,),
                    SmallButton(color: AppColors.blueColor, text: "Change number")
                  ],)
             ],),
           ),
           )
      ],),
        )
      ],)
    );
  }
}