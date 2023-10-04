import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';

mixin RouterMixin on State<NewsApp> {
  final _route = GoRouter(
    initialLocation: HomeScreen.route,
    routes: [
      GoRoute(
        path: HomeScreen.route,
        builder: (_, __) => const HomeScreen(),
      ),
      GoRoute(
        path: WeatherScreen.route,
        builder: (_, state) => WeatherScreen(
          weatherCubit: state.extra! as WeatherCubit,
        ),
      ),
    ],
  );

  GoRouter get appRouter => _route;
}
