import 'package:anti_heimer/Main/component/app_bar/app_bar1.dart';
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
    return const Scaffold(
      appBar: AppBarWidget1(title: '메인'),
      body: Text('home'),
    );
  }
}
