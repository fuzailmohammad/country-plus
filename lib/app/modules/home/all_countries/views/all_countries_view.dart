import 'package:country_plus/app/data/values/strings.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
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
      body: RefreshIndicator(
        onRefresh: controller.getCountryList,
        child: Column(
          children: [
            _buildSearchBar(),
            _buildCountryList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: AppColors.secondaryColor),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.search,
            color: AppColors.white,
          ),
          const SizedBox(width: 5),
          Flexible(
            child: SizedBox(
              height: 30,
              child: CustomTextField(
                wrapper: controller.searchWrapper,
                onChanged: controller.filterCountries,
                hintText: Strings.search,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountryList() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.black.withOpacity(0.75),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Obx(() {
            if (controller.filteredCountryList.isEmpty) {
              return Center(
                child: Text(
                  controller.centerText.value,
                  style: Styles.tsWhiteRegular14,
                ),
              );
            } else {
              return ListView.builder(
                itemCount: controller.filteredCountryList.length,
                itemBuilder: (context, index) {
                  return CountryList(
                    onTap: () {
                     controller.goToDetail(index);
                    },
                    country: controller.filteredCountryList[index],
                  );
                },
              );
            }
          }),
        ),
      ),
    );
  }
}
