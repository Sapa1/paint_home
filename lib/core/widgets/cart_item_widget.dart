import 'package:flutter/material.dart';
import 'package:paint_home/core/styles/text_styles.dart';

import '../styles/colors.dart';

class CartItemWidget extends StatefulWidget {
  final String title;
  final String price;
  final String image;

  const CartItemWidget({
    required this.title,
    required this.price,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int _dropdownValue = 1;
  @override
  Widget build(BuildContext context) => Container(
        height: 91,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
            color: AppColors.gray2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Image.network(
              widget.image,
              height: 59,
              width: 51,
            ),
            const SizedBox(width: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.title,
                    style: AppTextStyles.sans16bold.copyWith(
                      color: AppColors.lightBlack,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    height: 1,
                    color: AppColors.gray2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        height: 21,
                        width: 67,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.littleDarkGray,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: DropdownButton<int>(
                          underline: const SizedBox(),
                          isExpanded: true,
                          iconSize: 20,
                          value: _dropdownValue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColors.littleDarkGray,
                          ),
                          style: AppTextStyles.sans12semiBold.copyWith(
                            color: AppColors.lightBlack,
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: 1,
                              child: Text('1 un.'),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text('2 un.'),
                            ),
                          ],
                          onChanged: dropdownCallBack,
                        ),
                      ),
                      Text(
                        'R\$ ${widget.price}',
                        style: AppTextStyles.sans14bold.copyWith(color: AppColors.lightBlack),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  void dropdownCallBack(int? selectedValue) {
    if (selectedValue is int) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }
}
