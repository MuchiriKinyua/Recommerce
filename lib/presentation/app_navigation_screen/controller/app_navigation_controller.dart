import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/app_navigation_model.dart';

class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
