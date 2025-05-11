import 'package:flutter/material.dart';
import 'package:hotel_booking_app/Controller/Widgets/alternativebutton/alternativebutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/smallbutton/smallbutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/textformwidget/textformwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navyBlueColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Textwidget(text: "Sign up", color: AppColors.whiteColor, fontsize: 28,
             fontweight: FontWeight.w500),
          ),
           Container(height: 650,width: 350,
           margin: EdgeInsets.all(15),
           decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(30),
           ), child: Padding(
             padding: const EdgeInsets.all(15),
             child: Column(children: [
              SizedBox(height: 20,),
              TextFormWidget(
                prefixicon: Icon(Icons.person_outline,color: AppColors.blueColor,), 
                text: "Full Name", color: AppColors.blackColor,
                 size: 18, fontweight: FontWeight.w400),
                 SizedBox(height: 20,),
                 TextFormWidget(
                prefixicon: Icon(Icons.email_outlined,color: AppColors.blueColor,), 
                text: "Email", color: AppColors.blackColor,
                 size: 18, fontweight: FontWeight.w400),
                  SizedBox(height: 20,),
                 TextFormWidget(
                prefixicon: Icon(Icons.phone_android_outlined,color: AppColors.blueColor,), 
                text: "Mobile Number", color: AppColors.blackColor,
                 size: 18, fontweight: FontWeight.w400),
                  SizedBox(height: 20,),
                 TextFormWidget(
                prefixicon: Icon(Icons.lock_outline,color: AppColors.blueColor,), 
                text: "Password", color: AppColors.blackColor,
                 size: 18, fontweight: FontWeight.w400),
                 SizedBox(height: 30,),
                 AlternativeButton(color: AppColors.greenColor, text: "Create Account"),
                 SizedBox(height: 50,),
                 Textwidget(text: "or sign in using", color: AppColors.greyColor,
                  fontsize: 14, fontweight: FontWeight.w600),
                 SizedBox(height: 10,),
                 Row(children: [
                  SmallButton(color: AppColors.fbColor, text: "Facebook"),
                  SizedBox(width: 10,),
                  SmallButton(color: AppColors.redColor, text: "Google")
                 ],),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Textwidget(text: "By creating an acoount,You are agree to our",
                      color: AppColors.greyColor, fontsize: 10, fontweight: FontWeight.w600),
                      TextButton(onPressed: (){}, child: Textwidget(text: "Terms",
                       color: AppColors.greenColor, fontsize: 14, fontweight: FontWeight.w400))
                   ],
                 ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Textwidget(text: "Already have an account?", color: AppColors.greyColor,
                     fontsize: 14, fontweight: FontWeight.w600),
                     TextButton(onPressed: (){}, child: Textwidget(text: "Signin",
                      color: AppColors.greenColor, fontsize: 16, fontweight: FontWeight.w400))
                  ],),
             ],),
           ),
           ),
        ],
      ),
    );
  }
}


// Container(
//         decoration: BoxDecoration(
//            gradient: LinearGradient(colors: [
//           AppColors.greenColor,
//           AppColors.navyBlueColor,
//         ],
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter
//         ),
//       ),
//         ),