import 'package:flutter/material.dart';

class ChoiceBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0.2),
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: const Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 3)),
                    Text(
                      '+',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                )),
          ],
        ));
  }
}
