import 'package:flutter/material.dart';
import 'package:gnosis/src/widgets/parciales/parcial1.dart';
import 'package:gnosis/src/widgets/parciales/parcial2.dart';
import 'package:gnosis/src/widgets/parciales/parcial3.dart';

class CalPage extends StatefulWidget {
  @override
  _CalPageState createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  Day _selectedDay = Day.PartialOne; // Día seleccionado inicialmente
  String dia = 'Primer Parcial';
  // Función para cambiar el día seleccionado
  void _changeSelectedDay(Day day) {
    setState(() {
      _selectedDay = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Parciales'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: const Text('Primer Parcial'),
                onTap: () {
                  _changeSelectedDay(Day.PartialOne);
                  Navigator.pop(context);
                  dia = 'Primer Parcial'; // Cerrar Drawer
                },
              ),
              ListTile(
                title: const Text('Segundo Parcial'),
                onTap: () {
                  _changeSelectedDay(Day.PartialTwo);
                  Navigator.pop(context);
                  dia = 'Segundo Parcial'; // Cerrar Drawer
                },
              ),
              ListTile(
                title: const Text('Tercer Parcial'),
                onTap: () {
                  _changeSelectedDay(Day.PartialThree);
                  Navigator.pop(context);
                  dia = 'Tercer Parcial'; // Cerrar Drawer
                },
              ),
            ],
          ),
        ),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 50,
                ),
                children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dia,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    height: 55,
                    color: Colors.transparent,
                  ),
                  _selectedDayWidget,
                ],
              )
            ])));
  }

  // Widget para mostrar el widget del día seleccionado
  Widget get _selectedDayWidget {
    switch (_selectedDay) {
      case Day.PartialOne:
        return const PartialOne();
      case Day.PartialTwo:
        return const PartialTwo();
      case Day.PartialThree:
        return const PartialThree();

      default:
        return const Text('No hay widget para este día');
    }
  }
}

// Enumeración para representar los días de la semana
// ignore: constant_identifier_names
enum Day {
  PartialOne,
  PartialTwo,
  PartialThree,
}

// Widgets de ejemplo para cada día (reemplácelos con sus widgets reales)

