import 'package:dpay_app/common/extension/custom_theme_extension.dart';
import 'package:flutter/material.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? btnTxt,
  Function? onPressed,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            message ?? '',
            style: TextStyle(fontSize: 15, color: context.cusTheme.greyColor),
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  if (onPressed != null) {
                    onPressed();
                  }
                },
                child: Text(
                  btnTxt ?? 'OK',
                  style: TextStyle(
                    fontSize: 16,
                    color: context.cusTheme.circleImageColor,
                  ),
                ))
          ],
        );
      });
}
