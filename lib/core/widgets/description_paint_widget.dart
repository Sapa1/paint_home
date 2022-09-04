import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paint_home/core/const/images.dart';
import 'package:paint_home/core/const/strings.dart';
import 'package:paint_home/core/styles/text_styles.dart';

import '../styles/colors.dart';

class DescriptionPaintWidget extends StatelessWidget {
  final EdgeInsets paddingRow;
  final EdgeInsets paddingContentRow;
  final String brushText;
  final String airText;
  final String bucketText;

  const DescriptionPaintWidget({
    required this.brushText,
    required this.airText,
    required this.bucketText,
    this.paddingRow = const EdgeInsets.only(left: 31, top: 20),
    this.paddingContentRow = const EdgeInsets.only(right: 20),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => UnconstrainedBox(
        child: Container(
          width: 300,
          height: 198,
          decoration: BoxDecoration(
            color: AppColors.gray,
            border: Border.all(
              color: AppColors.gray2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 20),
                child: Text(
                  AppStrings.differentials,
                  style: AppTextStyles.sans14bold.copyWith(
                    color: AppColors.lightBlack,
                  ),
                ),
              ),
              Padding(
                padding: paddingRow,
                child: Row(
                  children: [
                    Padding(
                      padding: paddingContentRow,
                      child: SvgPicture.asset(AppImages.brushIcon),
                    ),
                    Text(
                      brushText,
                      style: AppTextStyles.sans14light.copyWith(
                        color: AppColors.lightBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: paddingRow,
                child: Row(
                  children: [
                    Padding(
                      padding: paddingContentRow,
                      child: SvgPicture.asset(AppImages.airIcon),
                    ),
                    Text(
                      airText,
                      style: AppTextStyles.sans14light.copyWith(
                        color: AppColors.lightBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: paddingRow,
                child: Row(
                  children: [
                    Padding(
                      padding: paddingContentRow,
                      child: SvgPicture.asset(AppImages.paintBucketIcon),
                    ),
                    Text(
                      bucketText,
                      style: AppTextStyles.sans14light.copyWith(
                        color: AppColors.lightBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
