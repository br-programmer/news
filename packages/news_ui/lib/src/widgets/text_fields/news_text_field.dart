import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_ui/news_ui.dart';

class NewsTextField extends StatefulWidget {
  const NewsTextField({
    super.key,
    this.onChanged,
    this.hintText,
    this.onFocus,
    this.controller,
    this.prefix,
    this.suffix,
    this.minLines,
    this.maxLines,
    this.lines,
    this.formatters = const [],
    this.maxLength,
    this.focusNode,
    this.title,
    this.optionalText,
    this.validator,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.borderSide = BorderSide.none,
    this.textAlign = TextAlign.start,
    this.fillColor = Palette.white,
    this.verticalPadding = 12,
    this.textStyle,
    this.obscureText = false,
    this.hasError = false,
    this.readOnly = false,
    this.initialValue,
    this.error,
    this.autofocus = false,
    this.enable = true,
    this.hintTextColor,
    this.onTooltip,
    this.textInputAction,
    this.keyboardType,
    this.autocorrect = true,
  });

  final ValueChanged<String>? onChanged;
  final String? hintText;
  final ValueChanged<bool>? onFocus;
  final TextEditingController? controller;
  final Widget? prefix;
  final Widget? suffix;
  final int? minLines;
  final int? maxLines;
  final int? lines;
  final List<TextInputFormatter> formatters;
  final int? maxLength;
  final FocusNode? focusNode;
  final String? title;
  final String? optionalText;
  final String? Function(String?)? validator;
  final AutovalidateMode autovalidateMode;
  final BorderSide borderSide;
  final TextAlign textAlign;
  final Color fillColor;
  final double verticalPadding;
  final TextStyle? textStyle;
  final bool obscureText;
  final bool hasError;
  final bool readOnly;
  final String? initialValue;
  final Widget? error;
  final bool autofocus;
  final bool enable;
  final Color? hintTextColor;
  final VoidCallback? onTooltip;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool autocorrect;

  @override
  State<NewsTextField> createState() => _NewsTextFieldState();
}

class _NewsTextFieldState extends State<NewsTextField> {
  late final FocusNode focusNode;

  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    focusNode.addListener(focusListener);
    super.initState();
  }

  void focusListener() {
    widget.onFocus?.call(focusNode.hasFocus);
  }

  @override
  void dispose() {
    focusNode
      ..removeListener(focusListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        border: Border.all(
          color: Palette.greyDark,
          width: .5,
        ),
        borderRadius: borderRadius16,
      ),
      child: Padding(
        padding: edgeInsetsV2,
        child: Row(
          children: [
            if (widget.prefix != null) ...[
              space10,
              widget.prefix!,
            ] else
              space8,
            Expanded(
              child: CupertinoTextFormFieldRow(
                padding: edgeInsetsZero,
                decoration: const BoxDecoration(),
                cursorColor: Palette.greyDark,
                cursorHeight: 12,
                placeholder: widget.hintText,
                placeholderStyle: context.textTheme.labelMedium?.copyWith(
                  color: Palette.greyDark,
                ),
                style: context.textTheme.labelMedium,
                autofocus: widget.autofocus,
                autocorrect: widget.autocorrect,
                focusNode: focusNode,
                controller: widget.controller,
                readOnly: widget.readOnly,
                obscureText: widget.obscureText,
                obscuringCharacter: '*',
                onChanged: widget.onChanged,
                enabled: widget.enable,
                keyboardType: widget.keyboardType,
                textAlign: widget.textAlign,
                minLines: widget.lines ?? widget.minLines,
                maxLines:
                    widget.obscureText ? 1 : widget.lines ?? widget.maxLines,
                inputFormatters: [
                  ...widget.formatters,
                  LengthLimitingTextInputFormatter(widget.maxLength),
                ],
                validator: widget.validator,
                autovalidateMode: widget.autovalidateMode,
              ),
            ),
            if (widget.suffix != null) ...[
              widget.suffix!,
              space10,
            ] else
              space4,
          ],
        ),
      ),
    );
    // return TextFormField(
    //   autofocus: widget.autofocus,
    //   autocorrect: widget.autocorrect,
    //   initialValue: widget.initialValue,
    //   readOnly: widget.readOnly,
    //   onFieldSubmitted: widget.onSubmitted,
    //   obscuringCharacter: '*',
    //   onChanged: widget.onChanged,
    //   focusNode: widget.focusNode ?? focusNode,
    //   controller: widget.controller,
    //   validator: widget.validator,
    //   enabled: widget.enable,
    //   keyboardType: widget.keyboardType,
    //   autovalidateMode: widget.autovalidateMode,
    //   textInputAction: widget.textInputAction,
    //   decoration: InputDecoration(
    //     isDense: widget.isDense,
    //     fillColor: widget.fillColor,
    //     contentPadding: EdgeInsets.symmetric(
    //       vertical: widget.verticalPadding,
    //     ).copyWith(right: 12),
    //     prefix: prefixIcon == null ? space12 : null,
    //     prefixIcon: widget.prefix ??
    //         (prefixIcon == null
    //             ? null
    //             : NewsIcon(
    //                 icon: prefixIcon,
    //                 size: NewsIconSize.large,
    //                 color: Palette.greyDark,
    //               )),
    //     hintText: widget.hintText,
    //     border: _inputBorder(),
    // border: _inputBorder(
    //   borderSide: widget.borderSide,
    //   color: Colors.red,
    // ),
    // enabledBorder: _inputBorder(
    //   borderSide: widget.borderSide,
    //   color: Colors.red,
    // ),
    // errorBorder: _inputBorder(
    //   color: Palette.redDark,
    // ),
    // focusedErrorBorder: _inputBorder(
    //   color: Palette.redDark,
    // ),
    // focusedBorder: _inputBorder(
    //   color: widget.hasError ? Palette.redDark : Palette.greyDark,
    // ),
    //     hintStyle: context.textTheme.labelMedium?.copyWith(
    //       color: widget.hintTextColor ?? Palette.greyDark,
    //     ),
    //     errorStyle: context.textTheme.bodyMedium?.copyWith(
    //       color: Palette.redDark,
    //     ),
    //     labelStyle: context.textTheme.labelMedium,
    //     suffixIcon: suffixIcon,
    //   ),
    // textAlign: widget.textAlign,
    // minLines: widget.lines ?? widget.minLines,
    // maxLines: widget.obscureText ? 1 : widget.lines ?? widget.maxLines,
    // inputFormatters: [
    //   ...widget.formatters,
    //   LengthLimitingTextInputFormatter(widget.maxLength),
    // ],
    //   style: widget.textStyle ??
    //       context.textTheme.bodyMedium?.copyWith(
    //         fontWeight: AppFontWeight.semiBold,
    //       ),
    // );
  }
}
