import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

// 0.定义扩展方法 获取主题扩展类
extension ExtendedTheme on BuildContext {
  CustomThemeExtension get cusTheme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

// 1.定义主题扩展类 继承自ThemeExtension
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: AppColors.greyLight,
    blueColor: AppColors.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighlightColor: Color(0xFFE8E8ED),
    authAppBarTextColor: AppColors.greenLight,
    photoIconBgColor: Color(0xFFF0F2F3),
    photoIconColor: Color(0xFF9DAAB3),
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: AppColors.greenDark,
    greyColor: AppColors.greyDark,
    blueColor: AppColors.blueDark,
    langBtnBgColor: Color(0xFF182229),
    langBtnHighlightColor: Color(0xFF09141A),
    authAppBarTextColor: AppColors.greenDark,
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
  );

  // 1.1.定义主题扩展类的属性
  final Color? circleImageColor; //  圆形图片颜色
  final Color? greyColor; //  灰色
  final Color? blueColor;
  final Color? langBtnBgColor; //  语言按钮背景色
  final Color? langBtnHighlightColor; //  语言按钮高亮色
  final Color? authAppBarTextColor; //  认证页面AppBar文字颜色
  final Color? photoIconBgColor;
  final Color? photoIconColor;

  // 2.构造函数
  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighlightColor,
    this.authAppBarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith(
      {Color? circleImageColor,
      Color? greyColor,
      Color? blueColor,
      Color? langBtnBgColor,
      Color? langBtnHighlightColor,
      Color? authAppBarTextColor,
      Color? photoIconBgColor,
      Color? photoIconColor}) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighlightColor:
          langBtnHighlightColor ?? this.langBtnHighlightColor,
      authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighlightColor:
          Color.lerp(langBtnHighlightColor, other.langBtnHighlightColor, t),
      authAppBarTextColor:
          Color.lerp(authAppBarTextColor, other.authAppBarTextColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
    );
  }
}
