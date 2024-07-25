import 'package:flutter/material.dart';

class MainButtonSmallGray extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButtonSmallGray({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: Color.fromRGBO(242, 242, 242, 1),
            foregroundColor: Colors.black),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
