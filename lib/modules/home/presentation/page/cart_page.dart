import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paint_home/core/const/strings.dart';
import 'package:paint_home/core/styles/colors.dart';
import 'package:paint_home/core/styles/text_styles.dart';
import 'package:paint_home/core/widgets/body_page_scroll_widget.dart';
import 'package:paint_home/core/widgets/elevated_button_widget.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';
import 'package:paint_home/modules/home/presentation/bloc/cart/cart_event.dart';

import '../bloc/cart/cart_bloc.dart';
import '../bloc/cart/cart_state.dart';
import '../widget/cart_section.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final CartBloc cartBloc;

  @override
  void initState() {
    super.initState();

    cartBloc = Modular.get<CartBloc>();

    cartBloc.add(GetItemEvent());
  }

  @override
  Widget build(BuildContext context) => WrapScaffoldWidget(
        child: Scaffold(
          body: BodyPageScrollWidget(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            includeSafeArea: true,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  AppStrings.cart,
                  style: AppTextStyles.sans26bold.copyWith(
                    color: AppColors.lightBlack,
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<CartBloc, CartState>(
                  bloc: cartBloc,
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      success: (result) => Column(
                        children: [
                          CartSection(
                            listCartItensEntity: result.listCartItensEntity,
                          ),
                          const SizedBox(height: 30),
                          ElevatedButtonWidget(
                            elevatedButtonType: ElevatedButtonType.purple,
                            text: AppStrings.confirmBuy,
                            onPressed: () async {
                              cartBloc.add(
                                  ClearCartEvent(listCartItensEntity: result.listCartItensEntity));
                            },
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
