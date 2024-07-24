import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '위치',
          style: TextStyle(fontSize: 20),
        ),
        shape: const Border(
          bottom:
              BorderSide(color: Color.fromRGBO(213, 213, 213, 1), width: 1.2),
        ),
      ),
      body: Text('location'),
    );
  }
}
