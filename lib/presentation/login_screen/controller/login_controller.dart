import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '../models/login_model.dart';

class LogInController extends GetxController {
  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  Rx<LoginModel> logInModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailInputController.dispose();
    passwordInputController.dispose();
  }
}
