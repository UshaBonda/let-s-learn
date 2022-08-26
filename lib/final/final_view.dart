import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:letslearn/final/final_controller.dart';

import '../routes/app_pages.dart';
class FinalView extends GetView<FinalController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async=>false,
      child: SafeArea(child: Scaffold(body: Stack(
        children: [
          Image.asset(
            "assets/images/completed.gif",     fit: BoxFit.fitHeight,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                  /*  style: ElevatedButton.styleFrom(primary: Colors.purple),*/
                      onPressed: () {
                        Get.offAllNamed(Routes.HOME);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
                        child: Text('START NEW TEST',style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                /*      style: ElevatedButton.styleFrom(primary: Colors.purple),*/
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 16.0),
                        child: Text('QUIT',style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),),
                      )),
              ],
            ),
          )
        ],
      ),)),
    );
  }
}
