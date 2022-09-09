import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paint_home/core/const/images.dart';
import 'package:paint_home/core/const/strings.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';
import 'package:paint_home/modules/home/presentation/page/cart_page.dart';
import 'package:paint_home/modules/home/presentation/page/home_page.dart';
import 'package:paint_home/modules/home/presentation/page/profile_page.dart';

import '../../../../core/styles/colors.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();

    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          body: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              HomePage(),
              CartPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
              ),
            ),
            child: AnimatedBuilder(
              animation: pageController,
              builder: (context, snapshot) {
                return BottomNavigationBar(
                  selectedItemColor: AppColors.purpleBackground,
                  currentIndex: pageController.page?.round() ?? 0,
                  onTap: (index) {
                    pageController.jumpToPage(index);
                  },
                  backgroundColor: AppColors.transparent,
                  elevation: 0,
                  items: [
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        AppImages.shopIcon,
                        color: AppColors.purpleBackground,
                      ),
                      icon: SvgPicture.asset(
                        AppImages.shopIcon,
                        color: AppColors.littleDarkGray,
                      ),
                      label: AppStrings.store,
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        AppImages.cartIcon,
                        color: AppColors.purpleBackground,
                      ),
                      icon: SvgPicture.asset(AppImages.cartIcon),
                      label: AppStrings.cart,
                    ),
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        AppImages.personIcon,
                        color: AppColors.purpleBackground,
                      ),
                      icon: SvgPicture.asset(AppImages.personIcon),
                      label: AppStrings.profile,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      );
}
