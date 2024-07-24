import 'package:anti_heimer/Main/component/text_field.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String text;
  final String hintText;
  final String subText;

  const InputBox({
    required this.text,
    required this.hintText,
    required this.subText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 45)),
            Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 17),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        TextFieldWidget(hintText: hintText),
        const Padding(padding: EdgeInsets.only(bottom: 2)),
        Row(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(left: 45)),
            Text(
              subText,
              style: const TextStyle(fontSize: 10.5),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
      ],
    );
  }
}
