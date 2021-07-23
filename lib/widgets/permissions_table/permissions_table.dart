import 'package:flutter/material.dart';

Widget permissionTable(List permissionList, double firstRowMultiplier) {
  List<TableRow> rows = [];
  rows.add(TableRow(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Text('Команди та права', style: TextStyle(fontSize: 17))),
    ),
    Center(
        child: Text('A',
            style: TextStyle(fontSize: 17, color: Color(0xFF55FF55)))),
    Center(
        child: Text('B',
            style: TextStyle(fontSize: 17, color: Color(0xFFFFFF55)))),
    Center(
        child: Text('C',
            style: TextStyle(fontSize: 17, color: Color(0xFFFF5555)))),
    Center(
        child: Text('D',
            style: TextStyle(fontSize: 17, color: Color(0xFFFF55FF)))),
  ]));
  permissionList.forEach((element) {
    rows.add(TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(element[0]),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Icon(element[1] >= 3 ? Icons.done : Icons.close,
              color: element[1] >= 3 ? Colors.green : Colors.red)),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Center(
            child: Icon(element[1] >= 2 ? Icons.done : Icons.close,
                color: element[1] >= 2 ? Colors.green : Colors.red)),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Icon(element[1] >= 1 ? Icons.done : Icons.close,
              color: element[1] >= 1 ? Colors.green : Colors.red)),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Icon(element[1] >= 0 ? Icons.done : Icons.close,
              color: element[1] >= 0 ? Colors.green : Colors.red)),
    ]));
  });
  return Table(
    children: rows,
    columnWidths: {
      0: FlexColumnWidth(firstRowMultiplier),
    },
    border: TableBorder.all(color: Colors.white),
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
  );
}
