import 'package:flutter/material.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

class TextFormFieldWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onTapSuffixIcon;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final InputBorder? inputBorder;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;

  const TextFormFieldWidget({
    this.inputBorder,
    this.onTapSuffixIcon,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
    this.obscureText = false,
    this.onTap,
    this.onChanged,
    this.focusNode,
    this.suffixIcon,
    this.validator,
    this.controller,
    this.keyboardType,
    this.hintText,
    this.textInputAction,
    Key? key,
  }) : super(key: key);

// estilo do texto digitado
  TextStyle get styleText => AppTextStyles.sans16regular.copyWith(
        color: AppColors.white80Opacity,
      );

  //estilo do texto inicial interno
  TextStyle get hintStyle => AppTextStyles.sans16regular.copyWith(color: AppColors.white40Opacity);

//estilo da borda sem foco
  InputBorder get enabledBorder => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(
          color: AppColors.purpleBackground,
          width: 1,
        ),
      );
  TextStyle get errorTextStyle => AppTextStyles.sans13regular.copyWith(
        color: AppColors.errorField,
      );

  InputBorder get enabledFocusedBorder => const OutlineInputBorder().copyWith(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        borderSide: const BorderSide(
          color: AppColors.blue,
          width: 2,
        ),
      );

  InputBorder get errorBorder => const OutlineInputBorder().copyWith(
        borderSide: const BorderSide(
          color: AppColors.errorField,
          width: 1,
        ),
      );

  Widget get suffixIconWidget => IconButton(
        onPressed: onTapSuffixIcon,
        icon: suffixIcon ?? const SizedBox(),
        color: AppColors.white80Opacity,
        splashRadius: 25,
      );

  @override
  Widget build(BuildContext context) => TextFormField(
        key: key,
        onTap: onTap,
        onChanged: onChanged,
        validator: validator,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        obscuringCharacter: '*',
        obscureText: obscureText,
        style: styleText,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          enabledBorder: enabledBorder,
          fillColor: AppColors.white40Opacity,
          isDense: true,
          filled: true,
          contentPadding: contentPadding,
          hintText: hintText,
          hintStyle: hintStyle,
          border: const OutlineInputBorder(),
          focusedBorder: enabledFocusedBorder,
          errorBorder: errorBorder,
          errorStyle: errorTextStyle,
          suffixIcon: suffixIconWidget,
        ),
      );
}
