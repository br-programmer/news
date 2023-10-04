import 'package:flutter/material.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

enum NavBar {
  home(
    value: 0,
    icon: NewsIcons.home,
  ),
  favorites(
    value: 1,
    icon: NewsIcons.favorite,
  ),
  profile(
    value: 2,
    icon: NewsIcons.profile,
  );

  const NavBar({required this.value, required this.icon});
  final int value;
  final IconData icon;

  String get text {
    switch (this) {
      case NavBar.home:
        return texts.home.navbar.home;
      case NavBar.favorites:
        return texts.home.navbar.favorite;
      case NavBar.profile:
        return texts.home.navbar.profile;
    }
  }

  bool enable(NavBar nav) => this == nav;
}
