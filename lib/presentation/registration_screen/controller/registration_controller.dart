import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '../models/registration_model.dart';

class RegistrationController extends GetxController {
  TextEditingController nameInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  TextEditingController confirmpasswordInputController =
      TextEditingController();

  Rx<RegistrationModel> registrationModelObj = RegistrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameInputController.dispose();
    emailInputController.dispose();
    passwordInputController.dispose();
    confirmpasswordInputController.dispose();
  }
}
