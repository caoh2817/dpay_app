import 'package:dpay_app/common/extension/custom_theme_extension.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  final EdgeInsetsGeometry? padding;

  const CustomIconButton(
      {super.key,
      required this.onTap,
      required this.icon,
      this.iconColor,
      this.iconSize,
      this.minWidth,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      // 水波纹透明
      splashColor: Colors.transparent,
      // 水波纹半径
      splashRadius: 22,
      // icon大小
      iconSize: 22,
      // icon内边距
      padding: const EdgeInsets.all(0),
      constraints: BoxConstraints(minWidth: minWidth ?? 40),
      icon: Icon(icon, color: iconColor ?? context.cusTheme.greyColor),
    );
  }
}
