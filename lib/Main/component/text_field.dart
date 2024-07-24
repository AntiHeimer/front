import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;

  const TextFieldWidget({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 308,
      height: 55,
      child: TextField(
        cursorColor: Colors.transparent,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide:
                BorderSide(width: 1, color: Color.fromRGBO(113, 113, 113, 1)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide:
                BorderSide(width: 1, color: Color.fromRGBO(113, 113, 113, 1)),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontSize: 15, color: Color.fromRGBO(113, 113, 113, 1)),
        ),
      ),
    );
  }
}
