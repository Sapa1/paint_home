import 'package:flutter/material.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';

class ProfileCardWidget extends StatelessWidget {
  final String image;
  final String name;

  const ProfileCardWidget({
    required this.name,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 124,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
          border: Border.all(
            color: AppColors.gray2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                image,
                width: 70,
                height: 70,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              name,
              style: AppTextStyles.sans16bold.copyWith(
                color: AppColors.lightBlack,
              ),
            ),
          ],
        ),
      );
}
