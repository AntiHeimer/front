import 'package:anti_heimer/Main/component/app_bar/app_bar1.dart';
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
    return const Scaffold(
      appBar: AppBarWidget1(title: '위치'),
      body: Text('location'),
    );
  }
}
