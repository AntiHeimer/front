import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AntiHeimer',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        colorScheme: const ColorScheme.light(
            primary: Colors.white60, secondary: Colors.black),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                child: Text("hello"),
              ),
              Container(
                child: Text("hello"),
              ),
              Container(
                child: Text("hello"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
