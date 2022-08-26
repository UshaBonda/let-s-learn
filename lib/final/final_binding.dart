import 'package:get/get.dart';
import 'package:letslearn/final/final_controller.dart';


class FinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FinalController>(
          () => FinalController(),
    );
  }
}
