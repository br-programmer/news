import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key, required this.weatherCubit});
  static const name = 'weather';
  static const route = '/$name';
  final WeatherCubit weatherCubit;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    widget.weatherCubit.getPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.weatherCubit,
      child: Scaffold(
        body: SafeArea(
          child: RefreshIndicator(
            onRefresh: widget.weatherCubit.getPosition,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              slivers: [
                const WeatherAppBar(),
                const HumedityPressureAndWind(),
                gap40.toSliver,
                const SunriseAndSunset(),
                gap40.toSliver,
                const Forecast(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
