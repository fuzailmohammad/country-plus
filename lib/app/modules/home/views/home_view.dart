import 'package:country_plus/app/data/values/strings.dart';
import 'package:country_plus/app/modules/home/all_continent/views/all_continent_view.dart';
import 'package:country_plus/app/modules/home/all_countries/views/all_countries_view.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:country_plus/widgets/card/background_image_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageCard(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Column(
          children: [
            const Expanded(
              child: PageViewDashboard(),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Expanded(
                        child: BottomNavigationBarItem(
                          onTap: controller.moveToContinents,
                          icon: CupertinoIcons.globe,
                          iconColor: controller.currentPage == 0
                              ? AppColors.white
                              : AppColors.grey,
                          title: Strings.continents,
                          style: controller.currentPage == 0
                              ? Styles.tsWhiteRegular12
                              : Styles.tsGreyRegular12,
                        ),
                      ),
                    ),
                    Obx(
                      () => Expanded(
                        child: BottomNavigationBarItem(
                          onTap: controller.moveToCountries,
                          icon: CupertinoIcons.map,
                          iconColor: controller.currentPage == 1
                              ? AppColors.white
                              : AppColors.grey,
                          title: Strings.country,
                          style: controller.currentPage == 1
                              ? Styles.tsWhiteRegular12
                              : Styles.tsGreyRegular12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBarItem extends StatelessWidget {
  final String title;
  final TextStyle style;
  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;

  const BottomNavigationBarItem({
    super.key,
    required this.title,
    required this.style,
    required this.onTap,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
            Text(
              title,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewDashboard extends GetView<HomeController> {
  const PageViewDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const PageScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: controller.onPageChanged,
      children: const [
        AllContinentView(),
        AllCountriesView(),
      ],
    );
  }
}
