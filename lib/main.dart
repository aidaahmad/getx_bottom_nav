import 'package:flutter/material.dart';
import 'package:flutter_getx_bottom_nav/routes/app_pages.dart';
import 'package:flutter_getx_bottom_nav/routes/app_routes.dart';
import 'package:flutter_getx_bottom_nav/themes/app_themes.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: "GetX App",
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.dark,
      theme: AppTheme.light,
      themeMode: ThemeMode.system,
    );
  }

}
