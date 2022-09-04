import 'package:flutter/material.dart';
import 'package:paint_home/core/const/strings.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

import 'double_button_widget.dart';

class CardShowPaintWidget extends StatelessWidget {
  final String image;
  final String namePaint;
  final VoidCallback? onPressedLeft;
  final VoidCallback? onPressedRight;

  const CardShowPaintWidget({
    required this.image,
    required this.namePaint,
    required this.onPressedLeft,
    required this.onPressedRight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            width: 328,
            height: 319,
            decoration: BoxDecoration(
              color: AppColors.gray,
              border: Border.all(
                color: AppColors.gray2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: onPressedLeft,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                    ),
                    Image.network(
                      image,
                      width: 93,
                      height: 107,
                      fit: BoxFit.cover,
                    ),
                    IconButton(
                      onPressed: onPressedRight,
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  namePaint,
                  style: AppTextStyles.sans18bold.copyWith(
                    color: AppColors.lightBlack,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DoubleButtonWidget(
                      doubleButtonType: DoubleButtonType.left,
                      text: AppStrings.howToPaint,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 2),
                    DoubleButtonWidget(
                      doubleButtonType: DoubleButtonType.right,
                      text: AppStrings.askQuestions,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 13,
            right: 24,
            child: Container(
              width: 82,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.lightShadeGray,
              ),
              child: Center(
                child: Text(
                  AppStrings.recommendation,
                  style: AppTextStyles.sans13regular.copyWith(
                    color: AppColors.lightBlack,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
