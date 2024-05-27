import 'package:flutter/material.dart';
import 'package:instagram_app/ui/app.dart';
import 'package:instagram_app/utils/di/locator.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  await setupLocator();
  runApp(const MyApp());
}
