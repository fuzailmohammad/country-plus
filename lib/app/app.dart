import 'package:country_plus/app/app_binding.dart';
import 'package:country_plus/app/data/values/constants.dart';
import 'package:country_plus/app/data/values/env.dart';
import 'package:country_plus/app/routes/app_pages.dart';
import 'package:country_plus/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Env.title,
      navigatorKey: GlobalKeys.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
      defaultTransition: Transition.fade,
      initialBinding: AppBinding(),
    );
  }
}
