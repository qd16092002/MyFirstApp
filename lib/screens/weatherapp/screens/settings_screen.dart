import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../blocs/setting_bloc.dart';
import '../events/settings_event.dart';
import '../states/settings_state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'),),
      body: ListView(
        children: <Widget>[
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, settingState) {
              return ListTile(
                title: const Text('Temperature Unit'),
                isThreeLine: true,
                subtitle: Text(
                    settingState.temperatureUnit == TemperatureUnit.celsius ?
                    'Celsius' : 'Fahrenheit'
                ),
                trailing: Switch(
                    value: settingState.temperatureUnit == TemperatureUnit.celsius,
                    onChanged: (_) => BlocProvider.of<SettingsBloc>(context).
                    add(SettingsEventToggleUnit())

                ),
              );
            },
          )
        ],
      ),
    );
  }
}