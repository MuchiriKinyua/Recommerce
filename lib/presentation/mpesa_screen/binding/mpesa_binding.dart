import 'package:get/get.dart';

import '../controller/mpesa_controller.dart';

class MpesaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MpesaController());
  }
}
