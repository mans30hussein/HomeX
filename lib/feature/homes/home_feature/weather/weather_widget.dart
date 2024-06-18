import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:home_x/core/util/app_assets.dart';
import 'package:home_x/core/util/colors.dart';
import 'package:home_x/feature/homes/home_feature/weather/data/weather_model.dart';
import 'package:home_x/feature/homes/home_feature/weather/service/weather_service.dart';

class Weather extends StatefulWidget {
  const Weather({
    Key? key,
    required this.cityName,
  }) : super(key: key);

  final String cityName;

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late StreamSubscription _subscription;
  late WeatherModle _weatherModel;

  @override
  void initState() {
    super.initState();
    _weatherModel =
        WeatherModle(cityName: '', image: '', temp: 0); // Initial empty model

    // Start the timer to fetch weather data periodically
    const fetchInterval = Duration(minutes: 10);
    _subscription = Stream.periodic(fetchInterval).listen((_) {
      _fetchWeather();
    });

    // Fetch weather data immediately
    _fetchWeather();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _fetchWeather() async {
    try {
      final weatherModel = await WeatherService(Dio())
          .getCurrentWeather(cityName: widget.cityName);
      setState(() {
        _weatherModel = weatherModel;
        _weatherModel.image = _weatherModel.image?.contains("https:") == false
            ? "https:${_weatherModel.image}"
            : _weatherModel.image;
      });
    } catch (error) {
      print('Error fetching weather: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: Image.network(
              _weatherModel.image ?? Assets.assetsImagesNoWeather),
        ),
        Text(
          '${_weatherModel.temp ?? "--"}°',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.babyblue,
          ),
        ),
      ],
    );
  }
}
