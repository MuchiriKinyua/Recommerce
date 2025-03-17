import '../controller/post_items_controller.dart';
import 'package:get/get.dart';

class PostItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostItemsController());
  }
}
