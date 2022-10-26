import 'package:flutter_bloc/flutter_bloc.dart';


import '../events/settings_event.dart';
import '../states/settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  //initial State
  SettingsBloc():super(const SettingsState(temperatureUnit: TemperatureUnit.celsius));
  Stream<SettingsState> mapEventToState(SettingsEvent settingsEvent) async* {
    if(settingsEvent is SettingsEventToggleUnit) {
      //state = "settings state"
      final newSettingsState = SettingsState(
          temperatureUnit: state.temperatureUnit == TemperatureUnit.celsius ?
          TemperatureUnit.fahrenheit : TemperatureUnit.celsius
      );
      yield newSettingsState;
    }
  }
}