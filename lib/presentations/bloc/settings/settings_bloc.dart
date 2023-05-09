import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState()) {
    on<SettingsEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<HandleTheme>((event, emit) {
      if (state.isDarkTheme) {
        emit( state.copyWith( isDarkTheme: false ) );
      } else {
        emit( state.copyWith( isDarkTheme: true ) );
      }
    });
  }
}
