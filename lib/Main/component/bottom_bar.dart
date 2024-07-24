import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(245, 245, 245, 100),
      child: const SizedBox(
        height: 104,
        child: TabBar(
          tabs: <Widget>[
            ButtonTextWidget(icon: Icons.location_on_outlined),
            ButtonTextWidget(icon: Icons.home),
            ButtonTextWidget(icon: Icons.account_circle_outlined),
          ],
        ),
      ),
    );
  }
}

class ButtonTextWidget extends StatelessWidget {
  // final String text;
  final IconData icon;

  const ButtonTextWidget({
    // required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(
        icon,
        size: 35,
        color: Colors.black,
      ),
      // child:
      //     Text(text, style: const TextStyle(fontSize: 12, color: Colors.black)),
    );
  }
}
