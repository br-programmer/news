import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const name = 'home';
  static const route = '/$name';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ValueCubit(value: HomeViewStatus.general),
        ),
        BlocProvider(
          create: (_) => WeatherCubit(
            const WeatherState.initial(),
            weatherRepository: Repositories.weather,
          )..checkPermission(),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<ValueCubit<HomeViewStatus>, HomeViewStatus>(
          builder: (_, state) => Stack(
            children: [
              const Positioned.fill(child: HomeView()),
              if (state.isGeneral) const NewsBottomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
