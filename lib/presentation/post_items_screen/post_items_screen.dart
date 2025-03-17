import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/post_items_controller.dart';

// ignore_for_file: must_be_immutable
class PostItemsScreen extends GetWidget<PostItemsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupNineController,
                                  hintText: "msg_enter_your_item".tr,
                                  margin:
                                      getMargin(left: 29, top: 68, right: 29),
                                  variant: TextFormFieldVariant.FillTealA200),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupEightController,
                                  hintText: "msg_enter_your_item2".tr,
                                  margin:
                                      getMargin(left: 25, top: 41, right: 25),
                                  variant: TextFormFieldVariant.FillRed300,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputController,
                                  hintText: "lbl_name".tr,
                                  margin:
                                      getMargin(left: 26, top: 9, right: 26),
                                  padding: TextFormFieldPadding.PaddingAll14,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupSevenController,
                                  hintText: "msg_enter_item_description".tr,
                                  margin:
                                      getMargin(left: 25, top: 4, right: 25),
                                  variant: TextFormFieldVariant.FillRed400),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputOneController,
                                  hintText: "lbl_description".tr,
                                  margin:
                                      getMargin(left: 25, top: 10, right: 25),
                                  padding: TextFormFieldPadding.PaddingAll14,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967),
                              CustomTextFormField(
                                  width: 249,
                                  focusNode: FocusNode(),
                                  controller: controller.groupSixController,
                                  hintText: "msg_enter_your_amount".tr,
                                  margin:
                                      getMargin(left: 24, top: 11, right: 24),
                                  variant: TextFormFieldVariant.FillPink800),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputTwoController,
                                  hintText: "lbl_amount".tr,
                                  margin:
                                      getMargin(left: 24, top: 8, right: 24),
                                  padding: TextFormFieldPadding.PaddingAll14,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967),
                              Container(
                                  margin:
                                      getMargin(left: 25, top: 16, right: 25),
                                  padding: getPadding(
                                      left: 8, top: 1, right: 8, bottom: 1),
                                  decoration: AppDecoration.txtFillPink700,
                                  child: Text("lbl_post_a_picture".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16)),
                              CustomTextFormField(
                                  width: 219,
                                  focusNode: FocusNode(),
                                  controller: controller.inputThreeController,
                                  hintText: "lbl_pic".tr,
                                  margin:
                                      getMargin(left: 24, top: 3, right: 24),
                                  padding: TextFormFieldPadding.PaddingAll14,
                                  fontStyle:
                                      TextFormFieldFontStyle.InterRegular967,
                                  textInputAction: TextInputAction.done),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtSaveupdate();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 83,
                                          top: 34,
                                          right: 83,
                                          bottom: 5),
                                      padding: getPadding(
                                          left: 5, top: 3, right: 5, bottom: 3),
                                      decoration: AppDecoration.txtFillTeal401,
                                      child: Text("lbl_save_update".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular24)))
                            ]))))));
  }

  onTapTxtSaveupdate() {
    Get.toNamed(AppRoutes.homepageScreen);
  }
}
