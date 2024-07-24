import 'package:anti_heimer/Main/component/app_bar.dart';
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
      appBar: AppBarWidget(title: '위치'),
      body: Text('location'),
    );
  }
}
