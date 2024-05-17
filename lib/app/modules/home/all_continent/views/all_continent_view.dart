import 'package:country_plus/app/data/values/images.dart';
import 'package:country_plus/app/data/values/strings.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/all_continent_controller.dart';

class AllContinentView extends GetView<AllContinentController> {
  const AllContinentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        title: const Text(Strings.appBarContinent),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ContinentRow(
                  continents: [
                    ContinentInfo(Strings.africa, Images.africa),
                    ContinentInfo(Strings.europe, Images.europe),
                  ],
                  onTap: controller.onTapContinent,
                ),
                const SizedBox(height: 10),
                ContinentRow(
                  continents: [
                    ContinentInfo(Strings.southAmerica, Images.southAmerica),
                    ContinentInfo(Strings.northAmerica, Images.northAmerica),
                  ],
                  onTap: controller.onTapContinent,
                ),
                const SizedBox(height: 10),
                ContinentRow(
                  continents: [
                    ContinentInfo(Strings.australia, Images.australia),
                    ContinentInfo(Strings.asia, Images.asia),
                  ],
                  onTap: controller.onTapContinent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final String title;

  const MainButton({
    super.key,
    required this.onTap,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final double size = (Get.width / 2.5) - 30;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              height: 80,
              width: 80,
            ),
            Text(
              title,
              style: Styles.tsBlackRegular12,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ContinentRow extends StatelessWidget {
  final List<ContinentInfo> continents;
  final Function(String) onTap;

  const ContinentRow({
    super.key,
    required this.continents,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: continents.map((continent) {
        return MainButton(
          onTap: () => onTap(continent.name),
          image: continent.image,
          title: continent.name,
        );
      }).toList(),
    );
  }
}

class ContinentInfo {
  final String name;
  final String image;

  ContinentInfo(this.name, this.image);
}
