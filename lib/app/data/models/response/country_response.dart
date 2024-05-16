import 'package:country_plus/app/data/models/dto/country.dart';

class CountryResponse {
  late List<Country> data;

  CountryResponse({required this.data});

  CountryResponse.fromJson(List<dynamic> json) {
    data = json.map((e) => Country.fromJson(e)).toList();
  }

  List<Map<String, dynamic>> toJson() {
    return data.map((v) => v.toJson()).toList();
  }
}
