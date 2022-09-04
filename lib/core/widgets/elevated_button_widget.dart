import 'package:flutter/material.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

enum ElevatedButtonType { purple, white }

class ElevatedButtonWidget extends StatelessWidget {
  final ElevatedButtonType elevatedButtonType;
  final String text;
  final VoidCallback? onPressed;
  final double? buttonMaxWidth;

  const ElevatedButtonWidget({
    required this.elevatedButtonType,
    required this.text,
    this.onPressed,
    this.buttonMaxWidth,
    Key? key,
  }) : super(key: key);

  bool get isPurple => elevatedButtonType == ElevatedButtonType.purple;

  @override
  Widget build(BuildContext context) {
    if (isPurple) {
      return buildPurple(context);
    } else {
      return buildWhite(context);
    }
  }

  Widget buildPurple(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(const Size(double.infinity, 53)),
          backgroundColor: MaterialStateProperty.all(AppColors.purpleBackground),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
              side: const BorderSide(
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
                style: AppTextStyles.sans19bold.copyWith(
                  color: AppColors.littleDarkWhite,
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildWhite(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(Size(buttonMaxWidth ?? double.infinity, 48)),
          backgroundColor: MaterialStateProperty.all(AppColors.white),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
              side: const BorderSide(
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
                style: AppTextStyles.sans16regular.copyWith(
                  color: AppColors.purpleBackground,
                ),
              ),
            ],
          ),
        ),
      );
}
