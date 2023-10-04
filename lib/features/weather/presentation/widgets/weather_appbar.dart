import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news_ui/news_ui.dart';

class WeatherAppBar extends StatelessWidget {
  const WeatherAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final loadedState = context.watch<WeatherCubit>().loadedState;
    final current = loadedState.weatherResponse.current;
    return SliverPersistentHeader(
      pinned: true,
      delegate: NewsSliverPersistentHeaderDelegate(
        maxHeight: 275,
        minHeight: 275,
        child: ColoredBox(
          color: Palette.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${loadedState.city.city}, ${loadedState.city.countryCode}',
                style: context.textTheme.titleSmall?.copyWith(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: edgeInsetsH30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${current.currentTemperature}°',
                          style: context.textTheme.labelLarge?.copyWith(
                            fontSize: 75,
                          ),
                        ),
                        gap8,
                        NewsCustomChip(
                          enable: false,
                          color: Palette.grey.withOpacity(.25),
                          onPressed: () {},
                          text: current.weather.first.weatherCondition,
                          textStyle: context.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  NewsImage(
                    imageUrl: current.weather.first.iconUrl,
                    placeholder: const SizedBox.shrink(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
