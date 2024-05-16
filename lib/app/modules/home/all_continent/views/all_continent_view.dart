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
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MainButton(
                      onTap: () {
                        controller.onTapContinent(Strings.africa);
                      },
                      image: Images.africa,
                      title: Strings.africa,
                    ),
                    MainButton(
                      onTap: () {},
                      image: Images.europe,
                      title: Strings.europe,
                    ),
                    MainButton(
                      onTap: () {},
                      image: Images.asia,
                      title: Strings.asia,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MainButton(
                      onTap: () {},
                      image: Images.southAmerica,
                      title: Strings.southAmerica,
                    ),
                    MainButton(
                      onTap: () {},
                      image: Images.northAmerica,
                      title: Strings.northAmerica,
                    ),
                    MainButton(
                      onTap: () {},
                      image: Images.australia,
                      title: Strings.australia,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MainButton(
                  onTap: () {},
                  image: Images.antarctica,
                  title: Strings.antarctica,
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
    return InkWell(
      onTap: onTap,
      child: Container(
        height: (Get.width / 3) - 30,
        width: (Get.width / 3) - 30,
        decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            Text(
              title,
              style: Styles.tsBlackRegular12,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
