import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_bottom_nav/pages/account/account_page.dart';
import 'package:flutter_getx_bottom_nav/pages/alert/alert_page.dart';
import 'package:flutter_getx_bottom_nav/pages/dashboard/dashboard_controller.dart';
import 'package:flutter_getx_bottom_nav/pages/home/home_page.dart';
import 'package:flutter_getx_bottom_nav/pages/news/news_page.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                NewsPage(),
                AlertPage(),
                AccountPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.sportscourt,
                label: 'News',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.bell,
                label: 'Alerts',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}