import 'package:flutter/material.dart';
import 'package:paint_home/core/widgets/elevated_button_widget.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/body_page_scroll_widget.dart';
import '../../../../core/widgets/profile_card_widget.dart';
import '../../../../core/widgets/wrap_scaffold_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          body: BodyPageScrollWidget(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                children: [
                  const Text('perfil'),
                  const SizedBox(height: 23),
                  const ProfileCardWidget(
                    image: 'https://images3.alphacoders.com/857/857335.jpg',
                    name: '',
                  ),
                  const SizedBox(height: 23),
                  ElevatedButtonWidget(
                    elevatedButtonType: ElevatedButtonType.white,
                    text: 'Fazer logout',
                    onPressed: () {},
                    style: ButtonStyle(
                      maximumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
                      backgroundColor: MaterialStateProperty.all(AppColors.white),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(
                            color: AppColors.gray2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
