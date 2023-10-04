// ignore_for_file: avoid_redundant_argument_values

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/core/core.dart';
import 'package:news/i18n/translations.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final newsHttp = Http(
    Dio(
      BaseOptions(
        baseUrl: DartDefine.newsBaseUrl,
        headers: {'X-Api-Key': DartDefine.newsApiKey},
      ),
    ),
  );
  final weatherHttp = Http(
    Dio(
      BaseOptions(
        baseUrl: DartDefine.weatherBaseUrl,
        headers: {'X-Api-Key': DartDefine.weatherApiKey},
      ),
    ),
  );
  injectServices();
  injectRepositories(
    newsHttp: newsHttp,
    weatherHttp: weatherHttp,
  );
  runApp(TranslationProvider(child: const NewsApp()));
}
