import 'package:flutter/cupertino.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 11),
        child: Text(
          text,
          style: AppTextStyles.sans16bold.copyWith(
            color: AppColors.white,
          ),
        ),
      );
}
