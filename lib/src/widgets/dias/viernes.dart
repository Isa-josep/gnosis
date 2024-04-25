import 'package:flutter/material.dart';
import 'package:gnosis/src/widgets/dias/materias-widget.dart';

class FridayWidget extends StatefulWidget {
  const FridayWidget({super.key});

  @override
  State<FridayWidget> createState() => _FridayWidgetState();
}

class _FridayWidgetState extends State<FridayWidget> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color.fromARGB(255, 139, 252, 142),
          Color.fromARGB(255, 183, 243, 185),
          Color.fromARGB(255, 37, 229, 43),
        ],
      )),
      columnSpacing: 0,
      horizontalMargin: 0,
      border: const TableBorder(
        top: BorderSide(width: 2, color: Colors.black),
        left: BorderSide(width: 2, color: Colors.black),
        right: BorderSide(width: 2, color: Colors.black),
        bottom: BorderSide(width: 2, color: Colors.black),
        horizontalInside: BorderSide(width: 2, color: Colors.black),
        verticalInside: BorderSide(width: 2, color: Colors.black),
      ),
      columns: const [
        DataColumn(label: MateriasW(value: 'Hora')),
        DataColumn(label: MateriasW(value: 'Materia'))
      ],
      rows: const [
        DataRow(cells: [
          DataCell(MateriasW(value: '1:00-2:00')),
          DataCell(MateriasW(value: 'Algebra')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: '2:00-3:00')),
          DataCell(MateriasW(value: 'Algebra')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: '3:00-4:00')),
          DataCell(MateriasW(value: 'Calculo')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: '4:00-5:00')),
          DataCell(MateriasW(value: 'Tutoria')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: '5:00-6:00')),
          DataCell(MateriasW(value: 'Tutoria')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: '6:00-7:00')),
          DataCell(MateriasW(value: 'Calculo')),
        ]),
      ],
    );
  }
}
