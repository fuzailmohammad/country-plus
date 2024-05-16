import 'package:country_plus/app/data/models/dto/country.dart';
import 'package:country_plus/app/data/repository/config_repository.dart';
import 'package:country_plus/app/routes/app_pages.dart';
import 'package:country_plus/base/base_controller.dart';
import 'package:country_plus/utils/helper/exception_handler.dart';
import 'package:country_plus/utils/helper/text_field_wrapper.dart';
import 'package:country_plus/utils/loading/loading_utils.dart';
import 'package:get/get.dart';

class AllCountriesController extends BaseController<ConfigRepository> {
  //TODO: Implement AllCountriesController
  TextFieldWrapper searchWrapper = TextFieldWrapper();
  final RxString centerText = "Loading".obs;
  final RxList<Country> countryList = <Country>[].obs;
  final RxList<Country> filteredCountryList = <Country>[].obs;

  @override
  void onReady() {
    super.onReady();
    _getCountryList();
  }

  void _getCountryList() async {
    LoadingUtils.showLoader();
    final response = await repository.getCountryList();
    LoadingUtils.hideLoader();
    if (response.data != null) {
      countryList.assignAll(response.data!);
      filteredCountryList.assignAll(response.data!);
    } else {
      HandleError.handleError(response.error);
      centerText.value = response.error!.message;
    }
  }

  void filterCountries(String query) {
    query = query.toLowerCase();
    if (query.isEmpty) {
      filteredCountryList.assignAll(countryList);
    } else {
      filteredCountryList.assignAll(
        countryList
            .where((country) => country.name!.toLowerCase().contains(query))
            .toList(),
      );
    }
  }

  void goToDetail(int index){
    Get.toNamed(Routes.COUNTRY_DETAIL, arguments: filteredCountryList[index]);
  }
}
