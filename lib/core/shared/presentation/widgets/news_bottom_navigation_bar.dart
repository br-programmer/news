import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news_ui/news_ui.dart';

class NewsBottomNavigationBar extends StatelessWidget {
  const NewsBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValueCubit<NavStatus>, NavStatus>(
      builder: (_, status) => AnimatedPositioned(
        duration: kThemeAnimationDuration,
        bottom: -status.value,
        left: 0,
        right: 0,
        child: Padding(
          padding: edgeInsets40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: borderRadius30,
              color: Palette.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Row(
                children: NavBar.values.mapList(
                  (nav) => _BottomNavigationBarItem(nav: nav),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomNavigationBarItem extends StatelessWidget {
  const _BottomNavigationBarItem({
    required this.nav,
  });
  final NavBar nav;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ValueCubit<NavBar>, NavBar>(
        builder: (_, state) {
          final enable = nav.enable(state);
          return InkWell(
            onTap: () => context.read<ValueCubit<NavBar>>().change(nav),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (enable)
                  ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) {
                      return Palette.redGradient.createShader(bounds);
                    },
                    child: NewsIcon(icon: nav.icon),
                  )
                else
                  NewsIcon(icon: nav.icon, color: Palette.grey),
                Text(
                  nav.text,
                  style: context.textTheme.labelSmall?.copyWith(
                    fontSize: 12,
                    color: enable ? Palette.redDark : Palette.grey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
