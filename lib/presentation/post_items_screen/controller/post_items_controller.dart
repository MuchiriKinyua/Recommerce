import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/post_items_model.dart';

class PostItemsController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  TextEditingController groupEightController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController groupSixController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  Rx<PostItemsModel> postItemsModelObj = PostItemsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
    groupEightController.dispose();
    inputController.dispose();
    groupSevenController.dispose();
    inputOneController.dispose();
    groupSixController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
  }
}
