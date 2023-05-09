import 'package:flutter/material.dart';
import 'package:shopping_shep_flutter/presentations/widgets/app_bar_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    bool isDarkmode = false;
    return Scaffold(
      appBar: AppBarWidget(
        nameScreen: 'Ajustes',
        actions: [
          IconButton(
            icon: Icon( isDarkmode ? Icons.dark_mode_outlined : Icons.light_mode_outlined ),
            onPressed: () {},
          )
        ],
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