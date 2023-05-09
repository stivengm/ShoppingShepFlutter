part of 'settings_bloc.dart';

class SettingsState extends Equatable {

  final bool isDarkTheme;

  const SettingsState({
    this.isDarkTheme = false
  });

  SettingsState copyWith({
    bool? isDarkTheme
  }) => SettingsState(
    isDarkTheme: isDarkTheme ?? this.isDarkTheme,
  );
  
  @override
  List<Object?> get props => [ isDarkTheme ];
}