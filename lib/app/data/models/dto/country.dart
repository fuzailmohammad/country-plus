class Country {
  String? name;
  String? flag;
  String? capital;
  int? population;
  String? region;
  String? subregion;

  Country({this.name, this.flag, this.capital, this.population, this.region, this.subregion});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name']?['common'];
    flag = json['flags']?['png'];
    capital = (json['capital'] != null && json['capital'].isNotEmpty) ? json['capital'][0] : null;
    population = json['population'];
    region = json['region'];
    subregion = json['subregion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['flag'] = flag;
    data['capital'] = capital;
    data['population'] = population;
    data['region'] = region;
    data['subregion'] = subregion;
    return data;
  }
}
