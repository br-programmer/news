import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (_, state) => state.maybeMap(
        orElse: () => NewsIconButton(
          icon: Icons.location_on,
          iconColor: Palette.white,
          borderRadius: borderRadius16,
          iconSize: NewsIconSize.large,
          onPressed: () {},
        ),
        locationDisable: (_) => NewsIconButton(
          icon: Icons.location_off,
          iconColor: Palette.white,
          borderRadius: borderRadius16,
          iconSize: NewsIconSize.large,
          onPressed: () {},
        ),
        loaded: (value) => NewsIconButton(
          iconColor: Palette.white,
          borderRadius: borderRadius16,
          iconSize: NewsIconSize.large,
          onPressed: () => context.push(
            WeatherScreen.route,
            extra: context.read<WeatherCubit>(),
          ),
          child: Center(
            child: Text(
              value.weatherResponse.current.currentTemperature,
              style: context.textTheme.displaySmall?.copyWith(
                color: Palette.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
