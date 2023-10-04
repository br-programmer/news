import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/core.dart';
import 'package:news/features/features.dart';
import 'package:news/i18n/translations.g.dart';
import 'package:news_ui/news_ui.dart';

class NewsAppBar extends StatefulWidget {
  const NewsAppBar({super.key});

  @override
  State<NewsAppBar> createState() => _NewsAppBarState();
}

class _NewsAppBarState extends State<NewsAppBar> {
  late final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValueCubit<HomeViewStatus>, HomeViewStatus>(
      builder: (_, state) => Row(
        children: [
          space20,
          Expanded(
            child: NewsSearchTextField(
              controller: controller,
              onChanged: (query) {
                final category = context.read<ValueCubit<NewsCategory>>().state;
                context.read<ValueCubit<String>>().change(query);
                context.read<SearchNewsBloc>().add(
                      SearchNewsEvent.searchNews(
                        category: category,
                        query: query,
                      ),
                    );
              },
              onFocus: (search) {
                context.read<ValueCubit<HomeViewStatus>>().change(
                      HomeViewStatus.newStatus(search),
                    );
              },
              hintText: texts.home.searchNews,
            ),
          ),
          if (state.isGeneral) ...[
            space16,
            const WeatherIcon(),
          ],
          space20,
        ],
      ),
    );
  }
}
