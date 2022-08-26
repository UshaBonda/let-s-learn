import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letslearn/main/main_controller.dart';
import 'package:letslearn/routes/app_pages.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Center(
                      child: Text(
                    controller.questions[controller.i.value].question,
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ))),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setAnswer(
                          controller.questions[controller.i.value].option1);
                    },
                    child: Obx(() => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 24.0),
                          child: Text(
                            controller.questions[controller.i.value].option1,
                            style: TextStyle(fontSize: 30),
                          ),
                        )),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setAnswer(
                          controller.questions[controller.i.value].option1);
                    },
                    child: Obx(() => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 24.0),
                          child: Text(
                              controller.questions[controller.i.value].option2,
                              style: TextStyle(fontSize: 30)),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void setAnswer(String option) {
    controller.questions[controller.i.value].answer = option;
    if (controller.i < controller.questions.length - 1) {
      controller.i++;
    } else {
      Get.toNamed(Routes.FINAL);
    }
  }
}
