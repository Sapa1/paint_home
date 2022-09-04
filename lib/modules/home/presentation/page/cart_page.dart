import 'package:flutter/material.dart';
import 'package:paint_home/core/widgets/body_page_scroll_widget.dart';
import 'package:paint_home/core/widgets/wrap_scaffold_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const WrapScaffoldWidget(
        child: Scaffold(
          body: BodyPageScrollWidget(
            child: Center(
              child: Text(
                'Cart page',
              ),
            ),
          ),
        ),
      );
}
