import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.backgroundColor,
      required this.text,
      this.bottomLeft,
      this.bottomRight,
      this.topLeft,
      this.topRight,
      this.fColor,
      this.fSize,
      this.fWeight});
  final Color backgroundColor;
  final String text;
  final Radius? bottomLeft;
  final Radius? bottomRight;
  final Radius? topLeft;
  final Radius? topRight;
  final FontWeight? fWeight;
  final Color? fColor;
  final double? fSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: bottomLeft ?? const Radius.circular(0),
                bottomRight: bottomRight ?? const Radius.circular(0),
                topLeft: topLeft ?? const Radius.circular(0),
                topRight: topRight ?? const Radius.circular(0),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.textStyle16.copyWith(
              fontSize: fSize ?? 16,
              color: fColor ?? Colors.white,
              fontWeight: fWeight ?? FontWeight.bold,
            ),
          ),
        ));
  }
}
