import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
    );
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          all: 3,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBluegray100:
        return ColorConstant.bluegray100;
      default:
        return ColorConstant.teal401;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterRegular16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll3,
}

enum ButtonVariant {
  FillTeal401,
  FillBluegray100,
  FillIndigoA200,
  FillGray500,
}

enum ButtonFontStyle {
  InterRegular24,
  InterRegular16,
}
