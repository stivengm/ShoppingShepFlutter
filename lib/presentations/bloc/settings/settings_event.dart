part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class HandleTheme extends SettingsEvent {
  final bool isDarkTheme;
  const HandleTheme(this.isDarkTheme);
}
