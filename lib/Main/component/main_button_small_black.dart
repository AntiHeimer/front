import 'package:flutter/material.dart';

class MainButtonSmallBlack extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButtonSmallBlack({
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
            backgroundColor: Colors.black, foregroundColor: Colors.white),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
