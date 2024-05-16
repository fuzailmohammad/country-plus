class URLs {
  URLs._privateConstructor();

 static const baseUrl = 'https://restcountries.com/v3.1/';

  //Country APIs
  static const all = "${baseUrl}all";
  static region(String region) => '${baseUrl}region/$region';
}
