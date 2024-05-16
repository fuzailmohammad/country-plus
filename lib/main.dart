import 'package:country_plus/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await initGetStorage();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

Future initGetStorage() async {
  await GetStorage.init();
}
