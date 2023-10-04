import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class HumedityPressureAndWind extends StatelessWidget {
  const HumedityPressureAndWind({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherResponse =
        context.watch<WeatherCubit>().loadedState.weatherResponse;
    final current = weatherResponse.current;
    return SliverPersistentHeader(
      delegate: NewsSliverPersistentHeaderDelegate(
        maxHeight: 50,
        minHeight: 50,
        child: ColoredBox(
          color: Palette.white,
          child: Padding(
            padding: edgeInsetsH20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NewsTextIcon(
                  icon: NewsIcons.humidity,
                  text: '${current.humidity}%',
                  iconColor: Palette.greyDark,
                  space: space2,
                  padding: edgeInsetsZero,
                ),
                NewsTextIcon(
                  icon: NewsIcons.pressure,
                  text: '${current.pressure} mBar',
                  iconColor: Palette.greyDark,
                  space: space2,
                  padding: edgeInsetsZero,
                ),
                NewsTextIcon(
                  icon: NewsIcons.wind,
                  text: '${weatherResponse.current.currentWindSpeed} Km/h',
                  iconColor: Palette.greyDark,
                  space: space2,
                  padding: edgeInsetsZero,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
