import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/Controller/Widgets/appassets.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/View/AuthView/signupview/signupview.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>SignupView());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.greenColor,
              AppColors.navyBlueColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Image.asset(AppAssets.splashLogoImage),)
    ),
    );
  }
}