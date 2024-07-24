import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '메인',
          style: TextStyle(fontSize: 20),
        ),
        shape: const Border(
          bottom:
              BorderSide(color: Color.fromRGBO(213, 213, 213, 1), width: 1.2),
        ),
      ),
      body: Text('home'),
    );
  }
}
