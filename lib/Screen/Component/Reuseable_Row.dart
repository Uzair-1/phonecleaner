// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/cupertino.dart';

class ReusableRow extends StatelessWidget {
  final List<String> texts;
  final TextStyle textStyle;

  const ReusableRow({required this.texts, this.textStyle = const TextStyle()});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: texts.map((text) => Text(text, style: textStyle)).toList(),
    );
  }
}

