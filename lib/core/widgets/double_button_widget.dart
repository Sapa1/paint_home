import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/text_styles.dart';

enum DoubleButtonType { left, right }

class DoubleButtonWidget extends StatelessWidget {
  final DoubleButtonType doubleButtonType;
  final String text;
  final VoidCallback? onPressed;
  final double? buttonMaxWidth;

  const DoubleButtonWidget({
    Key? key,
    required this.doubleButtonType,
    required this.text,
    this.onPressed,
    this.buttonMaxWidth,
  }) : super(key: key);

  bool get isLeft => doubleButtonType == DoubleButtonType.left;
  @override
  Widget build(BuildContext context) {
    if (isLeft) {
      return buildLeft(context);
    } else {
      return buildRight(context);
    }
  }

  Widget buildLeft(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(Size(buttonMaxWidth ?? double.infinity, 44)),
          backgroundColor: MaterialStateProperty.all(AppColors.purpleBackground),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.zero,
                bottomRight: Radius.zero,
                topLeft: Radius.circular(80),
                bottomLeft: Radius.circular(80),
              ),
              side: BorderSide(
                color: AppColors.transparent,
              ),
            ),
          ),
        ),
        child: SizedBox(
          height: 53,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyles.sans14bold.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      );
  Widget buildRight(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(Size(buttonMaxWidth ?? double.infinity, 44)),
          backgroundColor: MaterialStateProperty.all(AppColors.littleDarkGray),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                bottomLeft: Radius.zero,
                topRight: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),
              side: BorderSide(
                color: AppColors.transparent,
              ),
            ),
          ),
        ),
        child: SizedBox(
          height: 53,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyles.sans14bold.copyWith(
                  color: AppColors.littleDarkWhite,
                ),
              ),
            ],
          ),
        ),
      );
}
