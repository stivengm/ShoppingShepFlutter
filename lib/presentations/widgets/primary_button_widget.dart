import 'package:flutter/material.dart';
import 'package:shopping_shep_flutter/config/theme/app_theme.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final GestureTapCallback? onPressed;
  final Color? color;
  const PrimaryButton({ Key? key, this.text, this.onPressed, this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(AppTheme.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(
                color: AppTheme.primaryColor
              )
            )
          )
        ),
        child: Text(text!, style: Theme.of(context).textTheme.headlineMedium!.copyWith( color: color ?? Colors.white, fontSize: 18.0 ))

      ),
    );
  }
}