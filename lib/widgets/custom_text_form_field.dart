import 'package:flutter/material.dart';
import 'package:recommerce/core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.InterRegular16:
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
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            9.67,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            7.04,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillTealA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillRed300:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillRed400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillPink800:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray700,
            width: 1.41,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillTealA200:
        return ColorConstant.tealA200;
      case TextFormFieldVariant.FillRed300:
        return ColorConstant.red300;
      case TextFormFieldVariant.FillRed400:
        return ColorConstant.red400;
      case TextFormFieldVariant.FillPink800:
        return ColorConstant.pink800;
      default:
        return ColorConstant.gray100;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillTealA200:
        return true;
      case TextFormFieldVariant.FillRed300:
        return true;
      case TextFormFieldVariant.FillRed400:
        return true;
      case TextFormFieldVariant.FillPink800:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll1:
        return getPadding(
          all: 1,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder7,
}

enum TextFormFieldPadding {
  PaddingAll14,
  PaddingAll1,
}

enum TextFormFieldVariant {
  OutlineGray700,
  FillTealA200,
  FillRed300,
  FillRed400,
  FillPink800,
}

enum TextFormFieldFontStyle {
  InterRegular967,
  InterRegular16,
}
