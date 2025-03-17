import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/registration_controller.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillCyan200,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 7, right: 20),
                                    child: CommonImageView(
                                        imagePath:
                                            ImageConstant.img15949900635591,
                                        height: getVerticalSize(135.00),
                                        width: getHorizontalSize(320.00))),
                                Container(
                                    margin: getMargin(top: 5, right: 60),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "          ".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(24),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w400)),
                                        ]),
                                        textAlign: TextAlign.left)),
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 19, top: 7, right: 19),
                          child: Text("msg_enter_your_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16))),
                  CustomTextFormField(
                      width: 219,
                      focusNode: FocusNode(),
                      controller: controller.nameInputController,
                      hintText: "lbl_name".tr,
                      margin: getMargin(left: 20, top: 7, right: 20),
                      alignment: Alignment.centerLeft,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter valid text";
                        }
                        return null;
                      }),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 20, top: 7, right: 20),
                          child: Text("msg_enter_your_emai".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16))),
                  CustomTextFormField(
                      width: 219,
                      focusNode: FocusNode(),
                      controller: controller.emailInputController,
                      hintText: "lbl_email".tr,
                      margin: getMargin(left: 20, top: 6, right: 20),
                      alignment: Alignment.centerLeft,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      }),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 20, top: 3, right: 20),
                          child: Text("msg_enter_your_pass".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16))),
                  CustomTextFormField(
                      width: 219,
                      focusNode: FocusNode(),
                      controller: controller.passwordInputController,
                      hintText: "lbl_password".tr,
                      margin: getMargin(left: 20, top: 3, right: 20),
                      alignment: Alignment.centerLeft,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 19, top: 4, right: 19),
                          child: Text("msg_enter_your_pass".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16))),
                  CustomTextFormField(
                      width: 219,
                      focusNode: FocusNode(),
                      controller: controller.confirmpasswordInputController,
                      hintText: "lbl_password".tr,
                      margin: getMargin(left: 19, right: 19),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.centerLeft,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true),
                  CustomButton(
                    width: 164,
                    text: "lbl_register".tr,
                    margin: getMargin(left: 30, top: 18, right: 30),
                    variant: ButtonVariant.FillIndigoA200,
                    onTap: onTapBtnRegister,
                    alignment: Alignment.centerLeft,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.loginScreen);
                            },
                            child: Text("Login"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnRegister() async {
    final userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: controller.emailInputController.text,
      password: controller.passwordInputController.text,
    );
    final user = userCredential.user;
    final userData = {
      "name": controller.nameInputController.text,
      "email": controller.emailInputController.text,
      "password": controller.passwordInputController.text,
    };
    if (user != null) {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(user.uid)
          .set(userData);
      Get.toNamed(AppRoutes.loginScreen);
    }
  }
}
