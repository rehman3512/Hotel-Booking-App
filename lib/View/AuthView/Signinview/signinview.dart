import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/Controller/Widgets/alternativebutton/alternativebutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/smallbutton/smallbutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/textformwidget/textformwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';
import 'package:hotel_booking_app/View/AuthView/forgotpassword/forgotpassword.dart';
import 'package:hotel_booking_app/View/AuthView/signupview/signupview.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
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
            end: Alignment.bottomCenter,
            )
          ),child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Textwidget(text: "Sign in", color: AppColors.whiteColor, fontsize: 28,
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
                SizedBox(height: 30,),
                   TextFormWidget(
                  prefixicon: Icon(Icons.email_outlined,color: AppColors.blueColor,), 
                  text: "Email", color: AppColors.blackColor,
                   size: 18, fontweight: FontWeight.w400),
                    SizedBox(height: 20,),
                   TextFormWidget(
                  prefixicon: Icon(Icons.lock_outline,color: AppColors.blueColor,), 
                  text: "Password", color: AppColors.blackColor,
                   size: 18, fontweight: FontWeight.w400),
                   SizedBox(height: 30,),
                   TextButton(onPressed: (){
                    Get.to(()=>ForgotPassword());
                   }, child: Textwidget(text: "Forgot Password?",
                    color: AppColors.redColor, fontsize: 20, fontweight: FontWeight.w600)),
                   SizedBox(height: 30,),
                   AlternativeButton(color: AppColors.navyBlueColor, text: "Sign In"),
                   SizedBox(height: 100,),
                   Textwidget(text: "or sign in using", color: AppColors.greyColor,
                    fontsize: 14, fontweight: FontWeight.w600),
                   SizedBox(height: 10,),
                   Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallButton(color: AppColors.fbColor, text: "Facebook"),
                    SizedBox(width: 10,),
                    SmallButton(color: AppColors.redColor, text: "Google")
                   ],),
                   Padding(
                     padding: const EdgeInsets.all(6),
                     child: Row(
                       children: [
                         Textwidget(text: "By creating an acoount,You are agree to our",
                          color: AppColors.greyColor, fontsize: 12, fontweight: FontWeight.w600),
                          TextButton(onPressed: (){}, child: Textwidget(text: "Terms",
                           color: AppColors.greenColor, fontsize: 14, fontweight: FontWeight.w400))
                       ],
                     ),
                   ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Textwidget(text: "Don't have an account?", color: AppColors.greyColor,
                       fontsize: 10, fontweight: FontWeight.w600),
                       TextButton(onPressed: (){
                        Get.to(()=>SignupView());
                       }, child: Textwidget(text: "Sign Up",
                        color: AppColors.greenColor, fontsize: 16, fontweight: FontWeight.w400))
                    ],),
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