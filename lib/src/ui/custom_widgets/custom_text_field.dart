import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:domainchecker/src/constants/font_constants.dart';
import 'package:domainchecker/src/resources/app_colors.dart';
import 'package:domainchecker/src/resources/dimens.dart';
import 'package:domainchecker/src/resources/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final errorText;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final int maxLength;
  final int maxLines;
  final TextStyle hintStyle;
  final Function tap;
  final bool isFocused;
  final String counterText;
  final bool autoValidate;
  final textAlignment;
  final FocusNode currentFocusNode;
  final FocusNode nextFocusNode;
  final TextInputAction textInputAction;
  final ValueChanged<String> onFieldSubmitted;
  final ValueChanged<String> onChanged;
  final String prefixText;

  CustomTextField({
    key,
    this.hint,
    this.textEditingController,
    this.keyboardType,
    this.errorText,
    this.obscureText,
    this.textCapitalization,
    this.validator,
    this.inputFormatters,
    this.maxLength = 100,
    this.maxLines = 1,
    this.hintStyle,
    this.tap,
    this.isFocused,
    this.counterText = "",
    this.autoValidate = false,
    this.currentFocusNode,
    this.nextFocusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.textInputAction = TextInputAction.done,
    this.textAlignment = TextAlign.left,
    this.prefixText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return TextFormField(
      textCapitalization: keyboardType == TextInputType.emailAddress
          ? TextCapitalization.none
          : TextCapitalization.sentences,
      textInputAction: textInputAction,
      maxLength: maxLength,
      controller: textEditingController,
      onTap: tap,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: AppTextStyles.getMediumText(
          _width, AppColors.darkModeBlack, FontConstant.kRegular),
      textAlign: textAlignment,
      focusNode: currentFocusNode,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        errorStyle: TextStyle(
            color: isFocused ? AppColors.primaryColor : AppColors.primaryColor),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: Dimens.px1,
                color: isFocused
                    ? AppColors.primaryColor
                    : AppColors.primaryColor.withOpacity(.50)),
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.px22),
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: Dimens.px1,
                color: isFocused
                    ? AppColors.black
                    : AppColors.black.withOpacity(.50)),
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.px22),
            )),
        prefixText: prefixText,
        prefixStyle: AppTextStyles.getMediumText(
            _width, AppColors.white, FontConstant.kRegular),
        counterText: counterText,
        hintStyle: AppTextStyles.getSmallText(
            _width,
            AppColors.darkModeBlack,
            FontConstant.kRegular),
        hintText: hint,
        contentPadding: EdgeInsets.only(
            left: Dimens.px16,
            top: Dimens.px12,
            bottom: Dimens.px12,
            right: Dimens.px12),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: Dimens.px2,
                color: isFocused
                    ? AppColors.darkModeBlack.withOpacity(.10)
                    : AppColors.darkModeBlack.withOpacity(.20)),
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.px50),
            )),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: Dimens.px2, color: AppColors.darkModeBlack.withOpacity(.50)),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimens.px50),
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(Dimens.px50),
            ),
            borderSide: BorderSide(
                color: isFocused
                    ? AppColors.darkModeBlack.withOpacity(.10)
                    : AppColors.darkModeBlack.withOpacity(.20),
                width: Dimens.px1)),
      ),
      validator: validator,
      //define method here or in place of use
      autovalidate: autoValidate,
    );
  }
}
