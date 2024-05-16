import 'package:country_plus/app/data/values/strings.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/widgets/card/country_list.dart';
import 'package:country_plus/widgets/text_field/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/all_countries_controller.dart';

class AllCountriesView extends GetView<AllCountriesController> {
  const AllCountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          title: const Text(Strings.appBarCountries),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: AppColors.secondaryColor),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    CupertinoIcons.search,
                    color: AppColors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                      child: SizedBox(
                          height: 30,
                          child: CustomTextField(
                              wrapper: controller.searchWrapper,
                              hintText: Strings.search))),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return CountryList(
                            onTap: () {},
                            flag:
                                'https://cdn.britannica.com/33/4833-004-828A9A84/Flag-United-States-of-America.jpg',
                            title: 'America',
                          );
                        })),
              ),
            ),
          ],
        ));
  }
}
