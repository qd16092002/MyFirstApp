import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_icons/weather_icons.dart';

import '../blocs/setting_bloc.dart';
import '../blocs/theme_bloc.dart';
import '../models/weather.dart';
import '../states/settings_state.dart';
import '../states/theme_state.dart';


class TemperatureWidget extends StatelessWidget {
  final Weather weather;
  //constructor
  TemperatureWidget({required Key key, required this.weather})
      :assert(weather != null),
        super(key:key);
  //Convert celcius to fahrenheit
  int _toFahrenheit(double celsius) => ((celsius * 9 / 5) + 32).round();
  String _formattedTemperature(double temp, TemperatureUnit temperatureUnit) =>
      temperatureUnit == TemperatureUnit.fahrenheit ? '${_toFahrenheit(temp)}°F'
          : '${temp.round()}°C';
  BoxedIcon _mapWeatherConditionToIcon({required WeatherCondition weatherCondition}) {
    switch(weatherCondition) {
      case WeatherCondition.clear:
      case WeatherCondition.lightCloud:
        return const BoxedIcon(WeatherIcons.day_sunny);
        break;
      case WeatherCondition.hail:
      case WeatherCondition.snow:
      case WeatherCondition.sleet:
        return const BoxedIcon(WeatherIcons.snow);
        break;
      case WeatherCondition.heavyCloud:
        return const BoxedIcon(WeatherIcons.cloud_up);
        break;
      case WeatherCondition.heavyRain:
      case WeatherCondition.lightRain:
      case WeatherCondition.showers:
        return const BoxedIcon(WeatherIcons.rain);
        break;
      case WeatherCondition.thunderstorm:
        return const BoxedIcon(WeatherIcons.thunderstorm);
        break;
      case WeatherCondition.unknown:
        return const BoxedIcon(WeatherIcons.sunset);
        break;
    }
    return BoxedIcon(WeatherIcons.sunset);
  }
  @override
  Widget build(BuildContext context) {
    ThemeState _themeState = BlocProvider.of<ThemeBloc>(context).state;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Add an icon here
            _mapWeatherConditionToIcon(weatherCondition: weather.weatherCondition),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, settingsState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text('Min temp: ${
                            _formattedTemperature(
                                weather.minTemp,
                                settingsState.temperatureUnit
                            )}',
                          style: TextStyle(
                            fontSize: 18,
                            color: _themeState.textColor,
                          ),
                        ),
                        Text('Temp: ${
                            _formattedTemperature(
                                weather.temp,
                                settingsState.temperatureUnit
                            )}',
                          style: TextStyle(
                            fontSize: 18,
                            color: _themeState.textColor,
                          ),
                        ),
                        Text('Max temp: ${
                            _formattedTemperature(
                                weather.maxTemp,
                                settingsState.temperatureUnit
                            )}',
                          style: TextStyle(
                            fontSize: 18,
                            color: _themeState.textColor,
                          ),
                        ),
                      ],
                    );
                  },
                )
            )
          ],
        )
      ],
    );
  }

}