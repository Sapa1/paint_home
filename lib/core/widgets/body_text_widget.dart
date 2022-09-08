import 'package:flutter/cupertino.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

class BodyTextWidget extends StatelessWidget {
  final String text;
  const BodyTextWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: AppTextStyles.sans16regular.copyWith(
          color: AppColors.lightBlack,
        ),
      );
}
