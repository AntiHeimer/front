import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        "Loading...",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
