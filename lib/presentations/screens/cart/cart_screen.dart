import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: Text("Carrito de compras")
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$400.000"),
              Text("\$400.000")
            ],
          ),
        ),
      ],
    );
  }
}