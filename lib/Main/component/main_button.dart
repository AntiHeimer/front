import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;

  const MainButton({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 308,
      height: 55,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Colors.black, foregroundColor: Colors.white),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
