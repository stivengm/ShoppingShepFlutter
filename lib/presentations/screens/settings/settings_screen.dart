import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_shep_flutter/presentations/bloc/settings/settings_bloc.dart';
import 'package:shopping_shep_flutter/presentations/widgets/app_bar_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        nameScreen: 'Ajustes',
        actions: [
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return IconButton(
                icon: Icon(state.isDarkTheme
                    ? Icons.light_mode_outlined 
                    : Icons.dark_mode_outlined),
                onPressed: () {
                  final settingsBloc = BlocProvider.of<SettingsBloc>(context);
                  settingsBloc.add( HandleTheme( state.isDarkTheme ? false : true ) );
                }
                    
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Iniciar sesión"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
