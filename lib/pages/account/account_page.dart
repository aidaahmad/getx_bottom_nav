import 'package:flutter/material.dart';
import 'package:flutter_getx_bottom_nav/pages/account/account_controller.dart';
import 'package:get/get.dart';

class AccountPage extends GetView<AccountController>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Obx(()=> Text("Counter ${controller.counter.value}")),
              ElevatedButton(onPressed: ()=> controller.increaseCounter(), child: Text("Increase"))
            ],
          ),
        ),
      ),
    );
  }

}