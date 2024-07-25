import 'package:flutter/material.dart';

class TableBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      child: Table(
        border: TableBorder.all(color: Colors.black, width: 0.3),
        columnWidths: const {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(3),
        },
        children: const [
          TableRow(children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '치매 단계',
                  style: TextStyle(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '설명',
                  style: TextStyle(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          TableRow(children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '1단계',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '설명설명설명설명설명설명',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          TableRow(children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '2단계',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '설명설명설명설명설명설명',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
          TableRow(children: [
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '3단계',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  '설명설명설명설명설명설명',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
