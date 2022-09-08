import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

class TitletWidget extends StatelessWidget {
  final String text;
  final String number;
  final String? icon;

  const TitletWidget({
    required this.text,
    required this.number,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            number,
            style: AppTextStyles.sans32bold.copyWith(
              color: AppColors.purpleBackground,
            ),
          ),
          const SizedBox(width: 27),
          Text(
            text,
            style: AppTextStyles.sans22bold.copyWith(
              color: AppColors.lightBlack,
            ),
          ),
          const SizedBox(width: 35),
          icon == null
              ? const SizedBox()
              : SvgPicture.asset(
                  icon ?? '',
                  color: AppColors.black,
                )
        ],
      );
}
