import 'package:flutter/material.dart';
import 'package:shopping_shep_flutter/config/theme/app_theme.dart';
import 'package:shopping_shep_flutter/presentations/widgets/primary_button_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _account(),
                  const SizedBox(height: 30.0),
                  Text("Cuenta", style: Theme.of(context).textTheme.titleLarge!.copyWith( fontWeight: FontWeight.bold ),),
                  _options()
                ],
              ),
            ),
          ),
          PrimaryButton(
            text: "Cerrar sesión",
            onPressed: () { },
          )
        ],
      ),
    );
  }

  Widget _account() {
    return Row(
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50.0)
          ),
        ),
        const SizedBox(width: 15.0,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hola, Stiven"),
              Text("stivenalexander7u7@gmail.com"),
            ],
          ),
        )
      ],
    );
  }

  Widget _options() {
    return Column(
      children: [
        ListTile(
          title: Text("Historial"),
          onTap: () {},
        ),
        Divider(
          color: AppTheme.greyColor.withOpacity(.2),
        ),
        ListTile(
          title: Text("Pagos"),
          onTap: () {},
        ),
        Divider(
          color: AppTheme.greyColor.withOpacity(.2),
        ),
         ListTile(
          title: Text("Billetera"),
          onTap: () {},
        ),
      ],
    );
  }

}