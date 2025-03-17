import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/common_image_view.dart';
import 'controller/tv_controller.dart';

class TvScreen extends GetWidget<TvController> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var imgScreenshot2022118x123;
    // ignore: unused_local_variable

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
                      Container(
                          margin: getMargin(left: 29, top: 68, right: 29),
                          padding:
                              getPadding(left: 4, top: 1, right: 4, bottom: 1),
                          decoration: AppDecoration.txtFillTeal400,
                          child: Text("lbl_item_details".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(left: 88, top: 6, right: 88),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgScreenshot2022,
                              height: getVerticalSize(118.00),
                              width: getHorizontalSize(123.00))),
                      Container(
                          height: getVerticalSize(24.00),
                          width: getHorizontalSize(249.00),
                          margin: getMargin(left: 29, top: 5, right: 29),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(249.00),
                                    margin: getMargin(top: 1),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.red400))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 4, right: 10, bottom: 10),
                                    child: Text("lbl_description2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16)))
                          ])),
                      Padding(
                          padding: getPadding(left: 33, top: 21, right: 33),
                          child: Text("lbl_bluetooth".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(left: 33, top: 23, right: 33),
                          child: Text("lbl_android_enabled".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(left: 33, top: 26, right: 33),
                          child: Text("lbl_3_hdmi_ports".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(left: 33, top: 19, right: 33),
                          child: Text("lbl_2_usb_ports".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtBuy();
                          },
                          child: Container(
                              margin: getMargin(
                                  left: 29, top: 18, right: 29, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 3, right: 46, bottom: 3),
                              decoration: AppDecoration.txtFillTeal401,
                              child: Text("lbl_buy".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular24)))
                    ])))));
  }

  onTapTxtBuy() {
    Get.toNamed(AppRoutes.mpesaScreen);
  }
}
