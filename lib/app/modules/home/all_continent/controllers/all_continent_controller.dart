import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:country_plus/widgets/card/country_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllContinentController extends GetxController {
  //TODO: Implement AllContinentController

  final count = 0.obs;

  onTapContinent(String title) {
    Get.defaultDialog(
        title: title,
        titleStyle: Styles.tsWhiteRegular20,
        backgroundColor: AppColors.black.withOpacity(0.85),
        content: SizedBox(
          height: Get.height - 200,
          width: Get.width - 20,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CountryList(
                  onTap: () {},
                  flag:
                      'https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg',
                  title: 'America',
                );
              }),
        ));
  }

  void increment() => count.value++;
}
