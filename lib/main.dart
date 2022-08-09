import 'package:brasileirao/controllers/theme_controller.dart';
import 'package:brasileirao/pages/home_page.dart';
import 'package:brasileirao/repositories/team_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  Get.lazyPut<ThemeController>(() => ThemeController());

  runApp(
    ChangeNotifierProvider(
      create: (context) => TeamsRepository(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController.to.loadThemeMode();
    return GetMaterialApp(
      title: 'Brasileirão',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}
