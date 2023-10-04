import 'package:flutter/material.dart';
import 'package:news_ui/news_ui.dart';

class NewsSearchTextField extends StatefulWidget {
  NewsSearchTextField({
    TextEditingController? controller,
    this.onChanged,
    this.hintText,
    this.onFocus,
    super.key,
    this.onCancel,
    this.autofocus = false,
    String? initialValue,
    this.duration = 500,
  }) : searchController =
            controller ?? TextEditingController(text: initialValue);

  final ValueChanged<String>? onChanged;
  final String? hintText;
  final ValueChanged<bool>? onFocus;
  final TextEditingController searchController;
  final VoidCallback? onCancel;
  final bool autofocus;
  final int duration;

  @override
  State<NewsSearchTextField> createState() => _NewsSearchTextFieldState();
}

class _NewsSearchTextFieldState extends State<NewsSearchTextField> {
  late final Debouncer debouncer = Debouncer(
    milliseconds: widget.duration,
  );

  late final showDeletedIcon = ValueNotifier(false);
  var text = '';

  @override
  void dispose() {
    showDeletedIcon.dispose();
    debouncer.cancel();
    super.dispose();
  }

  void onCancel() {
    text = '';
    debouncer.cancel();
    widget.searchController.clear();
    widget.onCancel?.call();
    widget.onFocus?.call(false);
    showDeletedIcon.value = false;
    FocusScope.of(context).unfocus();
  }

  void onChanged(String value) {
    text = value;
    debouncer.run(() => widget.onChanged?.call(value));
  }

  void onFocus(bool value) {
    var focus = value;
    if (!focus && text.isNotEmpty) {
      widget.searchController.text = text;
      focus = true;
    }
    widget.onFocus?.call(focus);
    showDeletedIcon.value = focus;
    if (!focus) onCancel();
  }

  @override
  Widget build(BuildContext context) {
    return NewsTextField(
      onFocus: onFocus,
      onChanged: onChanged,
      controller: widget.searchController,
      hintText: widget.hintText,
      lines: 1,
      suffix: ValueListenableBuilder<bool>(
        valueListenable: showDeletedIcon,
        builder: (_, value, child) {
          if (value) {
            return child!;
          }
          return NewsIcon(
            icon: NewsIcons.search,
            color: Palette.greyDark.withOpacity(.8),
            size: NewsIconSize.small,
          );
        },
        child: InkWell(
          onTap: onCancel,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: NewsIcon(
            icon: Icons.clear,
            color: Palette.greyDark.withOpacity(.8),
            size: NewsIconSize.medium,
          ),
        ),
      ),
    );
  }
}
