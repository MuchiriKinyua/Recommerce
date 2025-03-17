import 'package:flutter/material.dart';
import 'package:recommerce/core/app_export.dart';

import 'controller/profile_controller.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillTeal600,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: getVerticalSize(151.00),
                                        width: getHorizontalSize(257.00),
                                        margin: getMargin(
                                            left: 58, top: 11, right: 45),
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgUndrawprofile,
                                                          height:
                                                              getSize(151.00),
                                                          width: getSize(
                                                              151.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 5,
                                                          right: 10,
                                                          bottom: 6),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgUndrawpicprof,
                                                          height:
                                                              getVerticalSize(
                                                                  140.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  142.00))))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 58, right: 58, bottom: 9),
                                        child: Text("msg_your_profile_is".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular15WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: getHorizontalSize(310.00),
                              margin: getMargin(left: 12, top: 50, right: 12),
                              child: Text("msg_2hand_dealers_w".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular20Black900))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtGetstarted();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 12, top: 79, right: 12),
                                  padding: getPadding(
                                      left: 30, top: 9, right: 36, bottom: 9),
                                  decoration: AppDecoration.txtFillTeal402,
                                  child: Text("lbl_get_started".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular20WhiteA700)))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtLogout();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 12, top: 26, right: 12, bottom: 5),
                                  padding: getPadding(
                                      left: 30, top: 4, right: 47, bottom: 4),
                                  decoration: AppDecoration.txtFillGreen400,
                                  child: Text("lbl_log_out".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular18))))
                    ])))));
  }

  onTapTxtGetstarted() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapTxtLogout() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
