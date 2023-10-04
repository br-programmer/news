import 'package:flutter/material.dart';
import 'package:news/core/core.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class NewsCategories extends StatelessWidget {
  const NewsCategories({
    super.key,
    required this.onChanged,
    this.height = 50,
  });
  final ValueChanged<NewsCategory> onChanged;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      floating: true,
      delegate: NewsSliverPersistentHeaderDelegate(
        child: DefaultTabController(
          length: NewsCategory.values.length,
          child: _Categories(onChanged: onChanged),
        ),
        maxHeight: height,
        minHeight: height,
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories({
    required this.onChanged,
  });

  final ValueChanged<NewsCategory> onChanged;

  @override
  Widget build(BuildContext context) {
    const categories = NewsCategory.values;
    final controller = DefaultTabController.of(context);

    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ColoredBox(
          color: context.theme.scaffoldBackgroundColor,
          child: Align(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                NewsCategory.values.length,
                (index) => CategoryItem(
                  category: categories[index],
                  onChanged: (value) {
                    controller.animateTo(
                      index,
                      duration: kThemeAnimationDuration,
                    );
                    onChanged(value);
                  },
                  currentCategory: categories[controller.index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    required this.onChanged,
    required this.currentCategory,
  });
  final NewsCategory category;
  final ValueChanged<NewsCategory> onChanged;
  final NewsCategory currentCategory;

  EdgeInsets get _padding {
    if (category == NewsCategory.values.first) {
      return edgeInsetsL15.copyWith(right: 4);
    }
    if (category == NewsCategory.values.last) {
      return edgeInsetsR15.copyWith(left: 4);
    }
    return edgeInsetsH4;
  }

  @override
  Widget build(BuildContext context) {
    final tabBarTexts = {
      NewsCategory.business: texts.home.categories.business,
      NewsCategory.entertainment: texts.home.categories.entertainment,
      NewsCategory.health: texts.home.categories.health,
      NewsCategory.science: texts.home.categories.science,
      NewsCategory.sports: texts.home.categories.sports,
      NewsCategory.technology: texts.home.categories.technology,
    };
    return Padding(
      padding: _padding,
      child: NewsCustomChip(
        enable: category == currentCategory,
        onPressed: () => onChanged(category),
        text: tabBarTexts[category] ?? '',
      ),
    );
  }
}
