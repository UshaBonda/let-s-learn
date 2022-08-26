import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letslearn/home/home_controller.dart';

import '../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
            Image.asset(
            "assets/images/calc.gif",
            /* height: 125.0,
              width: 125.0,*/
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ), Container(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
          onPressed: () {
      Get.toNamed(Routes.MAIN);
      },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
            child: Text('START',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
          )),
    )],
    )
    ,
    )
    ,
    );
  }
}
