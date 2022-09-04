import 'package:flutter/material.dart';
import 'package:paint_home/core/const/strings.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';
import 'package:paint_home/core/widgets/elevated_button_widget.dart';
import 'package:paint_home/modules/home/domain/entities/paint_entity.dart';

import '../../../../core/widgets/card_show_paint_widget.dart';
import '../../../../core/widgets/description_paint_widget.dart';

class HomeSection extends StatefulWidget {
  final List<PaintEntity> listPaintEntity;
  final Function(int)? onPageChanged;

  const HomeSection({
    required this.listPaintEntity,
    required this.onPageChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  late final PageController pageController;
  late final PageController descriptionController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    descriptionController = PageController();
  }

  @override
  void dispose() {
    super.dispose();

    pageController.dispose();
    descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.paintOptions,
              style: AppTextStyles.sans26bold.copyWith(color: AppColors.lightBlack),
            ),
            const SizedBox(height: 53),
            SizedBox(
              height: 349,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: widget.onPageChanged,
                itemCount: widget.listPaintEntity.length,
                itemBuilder: (context, index) => CardShowPaintWidget(
                  namePaint: widget.listPaintEntity[index].name,
                  image: widget.listPaintEntity[index].image,
                  onPressedLeft: index == 0
                      ? null
                      : () {
                          descriptionController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                          pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                  onPressedRight: index == widget.listPaintEntity.length - 1
                      ? null
                      : () {
                          descriptionController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 198,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: descriptionController,
                scrollDirection: Axis.horizontal,
                itemCount: widget.listPaintEntity.length,
                itemBuilder: (context, index) => DescriptionPaintWidget(
                  brushText: widget.listPaintEntity[index].benefits[0].name,
                  airText: widget.listPaintEntity[index].benefits[1].name,
                  bucketText: widget.listPaintEntity[index].benefits[2].name,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButtonWidget(
                text: AppStrings.addToCart,
                elevatedButtonType: ElevatedButtonType.purple,
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
}
