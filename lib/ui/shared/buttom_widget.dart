import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  final String textW;
  final Color colorW;
  final Function onPressedW;

  const ButtomWidget(
      {Key? key,
      required this.textW,
      required this.colorW,
      required this.onPressedW})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: colorW),
      onPressed: () => onPressedW(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(textW),
      ),
    );
  }
}
