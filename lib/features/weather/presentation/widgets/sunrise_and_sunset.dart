import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news_ui/news_ui.dart';

class SunriseAndSunset extends StatelessWidget {
  const SunriseAndSunset({super.key});

  @override
  Widget build(BuildContext context) {
    final current =
        context.watch<WeatherCubit>().loadedState.weatherResponse.current;
    return Padding(
      padding: edgeInsetsH20,
      child: Column(
        children: [
          SunriseAndSunsetText(
            text: current.sunrise.date.myHour,
            svgPicture: Assets.svgs.sun.svg(width: 25),
          ),
          gap16,
          SunriseAndSunsetText(
            text: current.sunset.date.myHour,
            svgPicture: Assets.svgs.moon.svg(width: 25),
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ],
      ),
    ).toSliver;
  }
}

class SunriseAndSunsetText extends StatelessWidget {
  const SunriseAndSunsetText({
    super.key,
    required this.text,
    required this.svgPicture,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final String text;
  final Widget svgPicture;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        svgPicture,
        space10,
        Text(
          text,
          style: context.textTheme.labelMedium,
        ),
      ],
    );
  }
}
