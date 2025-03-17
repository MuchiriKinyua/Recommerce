import 'package:flutter/material.dart';
import 'package:recommerce/core/app_export.dart';

import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 30, top: 101, right: 30),
                              child: CommonImageView(
                                  imagePath: ImageConstant.img15949900635591,
                                  height: getVerticalSize(88.00),
                                  width: getHorizontalSize(281.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 30, top: 51, right: 30),
                              child: Text("msg_welcome_to_2han".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(209.00),
                              margin: getMargin(left: 30, top: 15, right: 30),
                              child: Text("msg_2hand_dealers_e".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular15))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtNext();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 80, right: 30, bottom: 5),
                                  padding: getPadding(
                                      left: 30, top: 7, right: 49, bottom: 7),
                                  decoration: AppDecoration.txtFillTeal400,
                                  child: Text("lbl_next".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular20WhiteA700))))
                    ])))));
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.registrationScreen);
  }
}
