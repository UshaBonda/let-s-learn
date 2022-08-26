import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Let/'s learn",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              onPrimary: Colors.white,
              primary: Colors.pink,
              textStyle:
                  TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ),
      ),
    ),
  );
}
