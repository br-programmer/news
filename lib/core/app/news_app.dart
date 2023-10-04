import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news/core/core.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> with RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ValueCubit<NavBar>(value: NavBar.home)),
        BlocProvider(
          create: (_) => ValueCubit<NavStatus>(value: NavStatus.show),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'News',
        debugShowCheckedModeBanner: false,
        theme: NewsTheme.light,
        darkTheme: NewsTheme.dark,
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
      ),
    );
  }
}
