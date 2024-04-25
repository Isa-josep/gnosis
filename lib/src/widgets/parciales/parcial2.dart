import 'package:flutter/material.dart';
import 'package:gnosis/src/widgets/dias/materias-widget.dart';

class PartialTwo extends StatefulWidget {
  const PartialTwo({super.key});

  @override
  State<PartialTwo> createState() => _PartialTwoState();
}

class _PartialTwoState extends State<PartialTwo> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color.fromARGB(255, 224, 139, 252),
          Color.fromARGB(255, 234, 183, 243),
          Color.fromARGB(255, 203, 37, 229),
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
        DataColumn(label: MateriasW(value: 'Materia')),
        DataColumn(label: MateriasW(value: 'Calificacion'))
      ],
      rows: const [
        DataRow(cells: [
          DataCell(MateriasW(value: 'Programacion')),
          DataCell(MateriasW(value: '100')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: 'Calculo')),
          DataCell(MateriasW(value: '70')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: 'Algebra')),
          DataCell(MateriasW(value: '80')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: 'Quimica')),
          DataCell(MateriasW(value: '80')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: 'Probabilidad')),
          DataCell(MateriasW(value: '90')),
        ]),
        DataRow(cells: [
          DataCell(MateriasW(value: 'Contabilidad')),
          DataCell(MateriasW(value: '90')),
        ]),
      ],
    );
  }
}
