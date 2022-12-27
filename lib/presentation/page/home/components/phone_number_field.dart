import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/base.dart';
import 'package:neumorphic_phone_dialer/presentation/theme/text_styles.dart';

class AppPhoneNumberField extends StatefulWidget {
  final TextEditingController controller;

  const AppPhoneNumberField({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<AppPhoneNumberField> createState() => _AppPhoneNumberFieldState();
}

class _AppPhoneNumberFieldState extends State<AppPhoneNumberField> {
  String _formatByMask(
      String text,
      String mask,
      List<String>? altMasks, [
        int altMaskIndex = 0,
        bool allowEndlessPhone = false,
      ]) {
    text = toNumericString(
      text,
      allowHyphen: false,
      errorText: null,
      allowAllZeroes: true,
    );
    final List<String> result = <String>[];
    int indexInText = 0;
    for (int i = 0; i < mask.length; i++) {
      if (indexInText >= text.length) {
        break;
      }
      final String curMaskChar = mask[i];
      if (curMaskChar == '0') {
        final String curChar = text[indexInText];
        if (isDigit(curChar)) {
          result.add(curChar);
          indexInText++;
        } else {
          break;
        }
      } else {
        result.add(curMaskChar);
      }
    }

    final String actualDigitsInMask = toNumericString(
      mask,
      allowHyphen: true,
      allowPeriod: false,
      errorText: null,
      allowAllZeroes: true,
    ).replaceAll(',', '');
    if (actualDigitsInMask.length < text.length) {
      if (altMasks != null && altMaskIndex < altMasks.length) {
        final String formatResult = _formatByMask(
          text,
          altMasks[altMaskIndex],
          altMasks,
          altMaskIndex + 1,
          allowEndlessPhone,
        );
        return formatResult;
      }

      if (allowEndlessPhone) {
        result.add(' ');
        for (int i = actualDigitsInMask.length; i < text.length; i++) {
          result.add(text[i]);
        }
      }
    }

    final String jointResult = result.join();
    return jointResult;
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      final String maskedText = _formatByMask(
        widget.controller.text,
        '(000) - 000 - 00 - 00',
        null,
      );
      widget.controller.text =
          maskedText.isNotEmpty ? maskedText : widget.controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: false,
      style: titleSmall(
        color: AppTheme.of(context).colors.gray,
      ),
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      controller: widget.controller,
    );
  }
}
