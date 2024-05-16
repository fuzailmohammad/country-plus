import 'package:country_plus/app/data/models/dto/country.dart';
import 'package:country_plus/app/data/repository/config_repository.dart';
import 'package:country_plus/app/routes/app_pages.dart';
import 'package:country_plus/app/theme/app_colors.dart';
import 'package:country_plus/app/theme/styles.dart';
import 'package:country_plus/base/base_controller.dart';
import 'package:country_plus/utils/helper/exception_handler.dart';
import 'package:country_plus/utils/loading/loading_utils.dart';
import 'package:country_plus/widgets/card/country_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllContinentController extends BaseController<ConfigRepository> {
  //TODO: Implement AllContinentController

  final RxList<Country> countryList = <Country>[].obs;

  Future<void> _getCountryList(String region) async {
    LoadingUtils.showLoader();
    final response = await repository.getCountryListByRegion(region);
    LoadingUtils.hideLoader();
    if (response.data != null) {
      countryList.assignAll(response.data!);
    } else {
      HandleError.handleError(response.error);
    }
  }

  onTapContinent(String title) async {
    countryList.clear();
    await _getCountryList(title);
    if (countryList.isEmpty) {
      return;
    } else {
      Get.defaultDialog(
        title: title,
        titleStyle: Styles.tsWhiteRegular20,
        backgroundColor: AppColors.black.withOpacity(0.85),
        content: SizedBox(
          height: Get.height / 2,
          width: Get.width - 20,
          child: ListView.builder(
            itemCount: countryList.length,
            itemBuilder: (context, index) {
              return CountryList(
                onTap: () {
                  Get.toNamed(Routes.COUNTRY_DETAIL, arguments: countryList[index]);
                },
                country: countryList[index],
              );
            },
          ),
        ),
      );
    }
  }
}
