import 'package:flutter/material.dart';
import 'package:shopping_shep_flutter/config/theme/app_theme.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 150.0,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        boxShadow: [
          BoxShadow(
            color: AppTheme.primaryColor.withOpacity(.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3)
          )
        ],
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: const Text("20% de descuento en ropa para damas"),
    );
  }
}