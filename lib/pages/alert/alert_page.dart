import 'package:flutter/material.dart';
import 'package:flutter_getx_bottom_nav/pages/alert/alert_controller.dart';
import 'package:get/get.dart';

class AlertPage extends GetView<AlertController>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Alert Page", style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }

}