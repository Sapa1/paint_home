import 'package:flutter/material.dart';

import '../../../../core/widgets/cart_item_widget.dart';
import '../../domain/entities/cart_itens_entity.dart';

class CartSection extends StatelessWidget {
  final List<CartItensEntity> listCartItensEntity;
  const CartSection({
    required this.listCartItensEntity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listCartItensEntity.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CartItemWidget(
            price: listCartItensEntity[index].cartPaintDetailsEntity.price,
            title: listCartItensEntity[index].cartPaintDetailsEntity.name,
            image: listCartItensEntity[index].cartPaintDetailsEntity.coverImage,
            cartItensEntity: listCartItensEntity[index],
          ),
        ),
      );
}
