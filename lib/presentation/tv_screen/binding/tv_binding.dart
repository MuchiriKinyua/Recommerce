import '../controller/tv_controller.dart';
import 'package:get/get.dart';

class TvBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TvController());
  }
}
