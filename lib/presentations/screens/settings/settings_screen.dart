import 'package:flutter/material.dart';
import 'package:shopping_shep_flutter/presentations/widgets/app_bar_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        nameScreen: 'Ajustes',
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Iniciar sesión"),
            onTap: () { },
          )
        ],
      ),
    );
  }
}