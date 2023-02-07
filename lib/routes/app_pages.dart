
import 'package:flutter_getx_bottom_nav/pages/home/home_page.dart';
import 'package:flutter_getx_bottom_nav/routes/app_routes.dart';
import 'package:get/get.dart';


import '../pages/account/account_page.dart';
import '../pages/dashboard/dashboard_binding.dart';
import '../pages/dashboard/dashboard_page.dart';


class AppPages{
  static var list =
  [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: ()=>DashboardPage(),
      binding: DashboardBinding(),
    ),


  ];
}