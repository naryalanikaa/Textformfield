import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_textformfiled_borders.dart';

class CustomInputField extends StatefulWidget {
  final bool? isBorderOutline;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final bool? autofocus;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool? enabled;
  final Color? fillColor;
  final double? borderRadius;
  final double? enableBorderRadius;
  final double? focusedBorderRadius;
  final double? disabledBorderRadius;
  final double? errorBorderRadius;
  final int? minLines;
  final int? maxLines;
  final int? errorMaxLines;
  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChanged;
  final ValueChanged<String?>? onSave;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final String? initialvalue;
  final bool? readOnly;
  final Color? borderColor;
  final Color? enableBorderColor;
  final Color? focusedBorderColor;
  final Color? disabledBorderColor;
  final Color? errorBorderColor;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextAlign? textAlign;
  final InputDecoration? decoration;
  const CustomInputField(
      {Key? key,
      this.autovalidateMode,
      this.inputFormatters,
      this.textCapitalization,
      this.fillColor,
      this.keyboardType,
      this.controller,
      this.enabled,
      this.maxLines,
      this.errorMaxLines,
      this.maxLength,
      this.validator,
      this.onTap,
      this.onSave,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText,
      this.contentPadding,
      this.initialvalue,
      this.onChanged,
      this.readOnly,
      this.borderRadius,
      this.borderColor,
      this.style,
      this.decoration,
      this.textAlign,
      this.labelText,
      this.autofocus,
      this.textInputType,
      this.labelStyle,
      this.hintStyle,
      this.enableBorderColor,
      this.focusedBorderColor,
      this.disabledBorderColor,
      this.enableBorderRadius,
      this.focusedBorderRadius,
      this.disabledBorderRadius,
      this.errorBorderRadius,
      this.errorBorderColor,
      this.isBorderOutline,
      this.textInputAction,
      this.minLines})
      : super(key: key);

  @override
  CustomInputFieldState createState() => CustomInputFieldState();
}

class CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: widget.inputFormatters ??
            <TextInputFormatter>[
              LengthLimitingTextInputFormatter(200),
            ],
        readOnly: widget.readOnly ?? false,
        textAlign: widget.textAlign ?? TextAlign.start,
        style: widget.style ??
            const TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400),
        initialValue: widget.initialvalue,
        controller: widget.controller,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        enabled: widget.enabled ?? true,
        minLines: widget.minLines ?? 1,
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.maxLength,
        validator: widget.validator,
        obscureText: widget.obscureText ?? false,
        onTap: widget.onTap,
        onChanged: widget.onChanged,
        onSaved: widget.onSave,
        cursorColor: AppColors.primary,
        autofocus: widget.autofocus ?? false,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: widget.labelStyle ??
              const TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
          filled: true,
          fillColor: widget.fillColor ?? AppColors.transparent,
          errorStyle: const TextStyle(color: AppColors.red),
          errorMaxLines: widget.errorMaxLines ?? 4,
          errorBorder: widget.isBorderOutline == true
              ? CommonInputFieldBorders.outlineInputBorder(
                  borderRadius: widget.errorBorderRadius ?? 5.0,
                  color: widget.errorBorderColor ?? AppColors.red)
              : CommonInputFieldBorders.underlineInputBorder(
                  borderRadius: widget.errorBorderRadius ?? 0.0,
                  color: widget.errorBorderColor ?? AppColors.red),
          focusedErrorBorder: widget.isBorderOutline == true
              ? CommonInputFieldBorders.outlineInputBorder(
                  borderRadius: widget.borderRadius ?? 5.0,
                  color: widget.borderColor ?? AppColors.primary)
              : CommonInputFieldBorders.underlineInputBorder(
                  borderRadius: widget.borderRadius ?? 0.0,
                  color: widget.borderColor ?? AppColors.primary),
          hintText: widget.hintText ?? "",
          hintStyle: const TextStyle(color: AppColors.grey, fontSize: 14),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: widget.contentPadding ??
              const EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 0),
          isDense: true,
          border: widget.isBorderOutline == true
              ? CommonInputFieldBorders.outlineInputBorder(
                  borderRadius: widget.borderRadius ?? 5.0,
                  color: widget.borderColor ?? AppColors.primary)
              : CommonInputFieldBorders.underlineInputBorder(
                  borderRadius: widget.borderRadius ?? 0.0,
                  color: widget.borderColor ?? AppColors.primary),
          enabledBorder: widget.isBorderOutline == true
              ? CommonInputFieldBorders.outlineInputBorder(
                  borderRadius: widget.enableBorderRadius ?? 5.0,
                  color: widget.enableBorderColor ?? AppColors.grey)
              : CommonInputFieldBorders.underlineInputBorder(
                  borderRadius: widget.enableBorderRadius ?? 0.0,
                  color: widget.enableBorderColor ?? AppColors.grey),
          focusedBorder: widget.isBorderOutline == true
              ? CommonInputFieldBorders.outlineInputBorder(
                  borderRadius: widget.focusedBorderRadius ?? 5.0,
                  color: widget.focusedBorderColor ?? AppColors.primary)
              : CommonInputFieldBorders.underlineInputBorder(
                  borderRadius: widget.focusedBorderRadius ?? 0.0,
                  color: widget.focusedBorderColor ?? AppColors.primary),
          disabledBorder: widget.isBorderOutline == true
              ? CommonInputFieldBorders.outlineInputBorder(
                  borderRadius: widget.disabledBorderRadius ?? 5.0,
                  color: widget.disabledBorderColor ?? AppColors.primary)
              : CommonInputFieldBorders.underlineInputBorder(
                  borderRadius: widget.disabledBorderRadius ?? 0.0,
                  color: widget.disabledBorderColor ?? AppColors.primary),
        ));
  }
}
