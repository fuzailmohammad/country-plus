import 'package:country_plus/app/data/values/images.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Image.asset(
          Images.icAppLogo,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
