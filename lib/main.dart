import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_shep_flutter/config/provider/bloc_provider.dart';
import 'package:shopping_shep_flutter/config/router/app_router.dart';

import 'package:shopping_shep_flutter/config/theme/app_theme.dart';
import 'package:shopping_shep_flutter/presentations/bloc/settings/settings_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providerBloc,
      child: mateApp()
    );
  }

  mateApp() => BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: state.isDarkTheme ? AppTheme.darkTheme() : AppTheme.lightTheme(),
            darkTheme: state.isDarkTheme ? AppTheme.darkTheme() : AppTheme.lightTheme(),
            routerConfig: appRouter,
          );
        },
      );
}
