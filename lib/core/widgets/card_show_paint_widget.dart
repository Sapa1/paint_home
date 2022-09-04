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
  Widget build(BuildContext context) => UnconstrainedBox(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 349,
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
                  const SizedBox(height: 71),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: onPressedLeft,
                        icon: Icon(
                          Icons.arrow_back,
                          color: onPressedLeft == null ? Colors.grey.shade300 : Colors.grey,
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
                        icon: Icon(
                          Icons.arrow_forward,
                          color: onPressedRight == null ? Colors.grey.shade300 : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      namePaint,
                      style: AppTextStyles.sans18bold.copyWith(
                        color: AppColors.lightBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
                    child: Row(
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
        ),
      );
}
