import 'package:dpay_app/common/extension/custom_theme_extension.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.fontSize,
    this.readOnly,
    this.textAlign,
    this.keyboardType,
    this.prefixText,
    this.onTap,
    this.suffixIcon,
    this.autoFocus,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? hintText; //  1.定义提示文字
  final double? fontSize; //  1.定义字体大小
  final bool? readOnly;
  final TextAlign? textAlign;
  final TextInputType? keyboardType; //
  final String? prefixText; //  1.定义前缀文字
  final VoidCallback? onTap; //  1.定义点击事件
  final Widget? suffixIcon; //  1.定义后缀图标
  final bool? autoFocus;
  final Function(String)? onChanged; //  1.定义回调函数

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly ?? false,
      textAlign: textAlign ?? TextAlign.center,
      keyboardType: readOnly == null ? keyboardType : null,
      onTap: onTap,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: fontSize,
      ),
      autofocus: autoFocus ?? false,
      decoration: InputDecoration(
        isDense: true,
        //  1.紧凑型
        hintText: hintText,
        prefixText: prefixText,
        suffix: suffixIcon,
        hintStyle: TextStyle(color: context.cusTheme.greyColor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greenDark),
        ),
        focusedBorder: const UnderlineInputBorder(
          //  1.定义输入框聚焦时的边框
          borderSide: BorderSide(color: AppColors.greenDark, width: 2),
        ),
      ),
    );
  }
}
