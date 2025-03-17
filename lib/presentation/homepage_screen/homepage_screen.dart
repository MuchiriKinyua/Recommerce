import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';
import '../../widgets/custom_button.dart';
import 'controller/homepage_controller.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: getPadding(
                                      left: 23, top: 49, right: 23, bottom: 49),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomAppBar(
                                            height: getVerticalSize(56.00),
                                            title: Container(
                                                height: getVerticalSize(25.26),
                                                width:
                                                    getHorizontalSize(205.00),
                                                margin: getMargin(left: 60),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      25.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      205.00),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .deepOrange50))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 2,
                                                                      right:
                                                                          74),
                                                              child: Text(
                                                                  "lbl_search_here"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular20Black900)))
                                                    ])),
                                            actions: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 1,
                                                      right: 61),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(25.00),
                                                      width: getSize(25.00)))
                                            ]),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(top: 38),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 3),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            52.00),
                                                                    width: getHorizontalSize(
                                                                        44.00),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .fillBluegray100,
                                                                    child: Stack(
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomCenter,
                                                                              child: Padding(padding: getPadding(left: 8, top: 10, right: 7, bottom: 3), child: CommonImageView(imagePath: ImageConstant.img256941, height: getVerticalSize(43.00), width: getHorizontalSize(28.00))))
                                                                        ])),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                2,
                                                                            top:
                                                                                1,
                                                                            right:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl_home"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular14)))
                                                              ])),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapButton();
                                                          },
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getVerticalSize(52.00),
                                                                        width: getHorizontalSize(46.00),
                                                                        margin: getMargin(left: 10, right: 5),
                                                                        decoration: AppDecoration.fillBluegray100,
                                                                        child: Stack(children: [
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Padding(padding: getPadding(left: 5, top: 6, right: 6, bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgDownload1, height: getSize(35.00), width: getSize(35.00))))
                                                                        ]))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                3),
                                                                    child: Text(
                                                                        "lbl_acc"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .right,
                                                                        style: AppStyle
                                                                            .txtInterRegular14))
                                                              ]))
                                                    ]))),
                                        CustomButton(
                                            width: 100,
                                            text: "lbl_post_item".tr,
                                            margin: getMargin(
                                                left: 22, top: 1, right: 22),
                                            variant:
                                                ButtonVariant.FillBluegray100,
                                            fontStyle:
                                                ButtonFontStyle.InterRegular16,
                                            onTap: onTapPostitem,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 94,
                                                    top: 17,
                                                    right: 94),
                                                child: Text(
                                                    "lbl_items_available".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 10,
                                                    right: 20),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  101.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  52.00),
                                                          decoration: AppDecoration
                                                              .fillBluegray100,
                                                          child: Stack(
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: InkWell(
                                                                        onTap: () {
                                                                          onTapImgScreenshot2022();
                                                                        },
                                                                        child: CommonImageView(imagePath: ImageConstant.imgScreenshot2022, height: getVerticalSize(200.00), width: getHorizontalSize(52.00))))
                                                              ])),
                                                    ]))),
                                      ])))
                        ]))))));
  }

  onTapButton() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapPostitem() {
    Get.toNamed(AppRoutes.postItemsScreen);
  }

  onTapImgScreenshot2022() {
    Get.toNamed(AppRoutes.tvScreen);
  }
}
