import 'package:country_plus/app/data/models/dto/country.dart';
import 'package:country_plus/app/data/models/dto/response.dart';
import 'package:country_plus/app/data/models/response/country_response.dart';
import 'package:country_plus/app/data/values/urls.dart';
import 'package:country_plus/base/base_repository.dart';
import 'package:country_plus/utils/helper/exception_handler.dart';

class ConfigRepository extends BaseRepository {
  Future<RepoResponse<List<Country>>> getCountryList() async {
    final response =
    await controller.get(path: URLs.all);

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: CountryResponse.fromJson(response).data);
  }

  Future<RepoResponse<List<Country>>> getCountryListByRegion(String region) async {
    final response =
    await controller.get(path: URLs.region(region));

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: CountryResponse.fromJson(response).data);
  }

}
