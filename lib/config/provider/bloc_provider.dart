import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_shep_flutter/presentations/bloc/settings/settings_bloc.dart';

final List<BlocProvider> providerBloc = [
  BlocProvider<SettingsBloc>(create: ( _ ) => SettingsBloc()),
];