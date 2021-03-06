import 'package:flutter/material.dart';
import 'package:shop/models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  const CartItemWidget({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: FittedBox(
            child: Text('${cartItem.price}'),
          ),
        ),
      ),
      title: Text(cartItem.name),
      subtitle: Text('Total: R\$ ${cartItem.price * cartItem.quantity}'),
      trailing: Text('${cartItem.quantity}x'),
    );
  }
}
