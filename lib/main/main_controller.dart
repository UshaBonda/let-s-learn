import 'package:get/get.dart';

import '../home/question.dart';

class MainController extends GetxController {
  final List<Question> questions = [
    Question("2+2=?", "3", "4", "4", ""),
    Question("3*3=?", "9", "19", "9", ""),
    Question("4-9=?", "5", "-5", "-5", ""),
  ];
  var i = 0.obs;
}
