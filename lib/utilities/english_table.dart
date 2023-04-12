import 'package:flutter/material.dart';

class EnglishTable extends StatelessWidget {
  const EnglishTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.symmetric(inside: const BorderSide()),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const [
        TableRow(children: [
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Reading"),
            ),
          ),
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "advanced (technical documentation)",
                // textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),
        TableRow(children: [
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Listening"),
            ),
          ),
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "advanced (technical documentation)",
                // textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),
        TableRow(children: [
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Writing"),
            ),
          ),
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("intermediate"),
            ),
          ),
        ]),
        TableRow(children: [
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Speaking"),
            ),
          ),
          TableCell(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("intermediate"),
            ),
          ),
        ]),
      ],
    );
  }
}
