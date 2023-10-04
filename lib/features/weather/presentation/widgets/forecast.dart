import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    final weather = context.watch<WeatherCubit>().loadedState.weatherResponse;

    return SliverPadding(
      padding: edgeInsetsH20,
      sliver: SliverList.separated(
        itemCount: weather.daily.length,
        itemBuilder: (_, index) => ForescastItem(
          weatherDaily: weather.daily[index],
        ),
        separatorBuilder: (_, __) => gap8,
      ),
    );
  }
}

class ForescastItem extends StatelessWidget {
  const ForescastItem({
    super.key,
    required this.weatherDaily,
  });
  final WeatherDaily weatherDaily;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            weatherDaily.day,
            style: context.textTheme.titleSmall,
          ),
        ),
        SizedBox.square(
          dimension: 60,
          child: NewsImage(
            imageUrl: weatherDaily.weather.first.iconUrl,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              weatherDaily.min,
              style: context.textTheme.titleSmall,
            ),
            space20,
            Text(
              weatherDaily.max,
              style: context.textTheme.titleSmall?.copyWith(
                color: Palette.redDark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
