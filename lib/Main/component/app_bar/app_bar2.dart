import 'package:flutter/material.dart';

class AppBarWidget2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWidget2({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      shape: const Border(
        bottom: BorderSide(color: Color.fromRGBO(213, 213, 213, 1), width: 1.2),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
