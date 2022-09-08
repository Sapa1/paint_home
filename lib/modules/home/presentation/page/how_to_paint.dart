import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paint_home/core/const/strings.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';
import 'package:paint_home/core/widgets/body_page_scroll_widget.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';

import '../../../../core/const/images.dart';
import '../../../../core/widgets/title_and_body_widget.dart';

class HowToPaint extends StatelessWidget {
  const HowToPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Container(
          color: AppColors.gray,
          child: Scaffold(
            backgroundColor: AppColors.transparent,
            appBar: AppBar(
              leading: IconButton(
                onPressed: () => Modular.to.pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColors.lightBlack,
                ),
              ),
              title: Text(
                AppStrings.howToPaint,
                style: AppTextStyles.sans26bold.copyWith(
                  color: AppColors.lightBlack,
                ),
              ),
              centerTitle: true,
              backgroundColor: AppColors.transparent,
              elevation: 0,
            ),
            body: BodyPageScrollWidget(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const TitleAndBodyWidget(
                    number: '1',
                    textTitle: 'Prepare a tinta',
                    textBody: 'Abra a tinta e a coloque na caçamba',
                    icon: AppImages.paintBucketIcon,
                  ),
                  const SizedBox(height: 60),
                  const TitleAndBodyWidget(
                    number: '2',
                    textTitle: 'Primeira demão',
                    textBody:
                        'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                    icon: AppImages.brushIcon,
                  ),
                  const SizedBox(height: 60),
                  const Icon(
                    Icons.arrow_downward_sharp,
                    size: 60,
                    color: AppColors.littleDarkGray,
                  ),
                  const SizedBox(height: 60),
                  const TitleAndBodyWidget(
                    number: '3',
                    textTitle: 'Repasse a tinta',
                    textBody:
                        'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições',
                    icon: AppImages.brushIcon,
                  ),
                  const SizedBox(height: 60),
                  Column(
                    children: [
                      SvgPicture.asset(
                        AppImages.timeSvg,
                      ),
                      Text(
                        'Aguarde 2 horas',
                        style: AppTextStyles.sans22bold.copyWith(
                          color: AppColors.lightBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const TitleAndBodyWidget(
                    number: '5',
                    textTitle: 'Segunda demão',
                    textBody:
                        'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                    icon: AppImages.brushIcon,
                  ),
                  const SizedBox(height: 60),
                  const TitleAndBodyWidget(
                    number: '6',
                    textTitle: 'Repasse a tinta',
                    textBody:
                        'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições',
                    icon: AppImages.brushIcon,
                  ),
                  const SizedBox(height: 60),
                  Column(
                    children: [
                      SvgPicture.asset(
                        AppImages.timeSvg,
                      ),
                      Text(
                        'Aguarde 2 horas',
                        style: AppTextStyles.sans22bold.copyWith(
                          color: AppColors.lightBlack,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  const TitleAndBodyWidget(
                    number: '7',
                    textTitle: 'Acabou',
                    textBody: 'Sua parede está pronta',
                    icon: AppImages.brushIcon,
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ),
      );
}
