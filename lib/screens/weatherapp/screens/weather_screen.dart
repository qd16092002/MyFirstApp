import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/screens/weatherapp/screens/settings_screen.dart';
import 'package:untitled/screens/weatherapp/screens/temperature_widget.dart';

import '../blocs/theme_bloc.dart';
import '../blocs/weather_bloc.dart';
import '../events/theme_event.dart';
import '../events/weather_event.dart';
import '../states/theme_state.dart';
import '../states/weather_state.dart';
import 'city_search_screen.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WeatherScreenState();
}
class _WeatherScreenState extends State<WeatherScreen> {
  late Completer<void> _completer;
  @override
  void initState() {
    super.initState();
    _completer = Completer<void>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App using Flutter Bloc'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //Navigate to SettingsScreen
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  )
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              //Navigate to CitySearchScreen
              final typedCity = await Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => const CitySearchScreen()
                ),
              );
              if(typedCity != null) {
                BlocProvider.of<WeatherBloc>(context).add(
                    WeatherEventRequested(city: typedCity)
                );
              }
            },
          )
        ],
      ),
      body: Center(
        child: BlocConsumer<WeatherBloc, WeatherState>(
            listener: (context, weatherState) {
              if(weatherState is WeatherStateSuccess) {
                BlocProvider.of<ThemeBloc>(context).add(
                    ThemeEventWeatherChanged(
                        weatherCondition: weatherState.weather.weatherCondition)
                );
                _completer?.complete();
                _completer = Completer();
              }
            },
            builder: (context, weatherState) {
              if(weatherState is WeatherStateLoading) {
                return Center(child: CircularProgressIndicator());
              }
              if(weatherState is WeatherStateSuccess) {
                final weather = weatherState.weather;
                return BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, themeState){
                    return RefreshIndicator(
                      onRefresh: (){
                        BlocProvider.of<WeatherBloc>(context).add(
                            WeatherEventRefresh(city: weather.location)
                        );
                        //return a "Completer object"
                        return _completer.future;
                      },
                      child: Container(
                        color: themeState.backgroundColor,
                        child: ListView(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  weather.location,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: themeState.textColor
                                  ),
                                ),
                                Padding(padding: EdgeInsets.symmetric(vertical: 2),),
                                Center(
                                  child: Text(
                                    'Updated: ${TimeOfDay.fromDateTime(weather.lastUpdated).format(context)}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: themeState.textColor
                                    ),
                                  ),
                                ),
                                //show more here, put together inside a Widget
                                TemperatureWidget(
                                  weather: weather, key: null, 
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
              if(weatherState is WeatherStateFailure) {
                return const Text(
                  'Something went wrong',
                  style: TextStyle(color: Colors.redAccent, fontSize: 16),
                );
              }
              return const Center(child: Text(
                'select a location first !',
                style: TextStyle(fontSize: 30),
              ),);
            }
        ),
      ),
    );
  }
}