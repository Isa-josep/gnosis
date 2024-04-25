import 'package:flutter/material.dart';
import 'package:gnosis/src/widgets/dias/jueves.dart';
import 'package:gnosis/src/widgets/dias/lunes.dart';
import 'package:gnosis/src/widgets/dias/martes.dart';
import 'package:gnosis/src/widgets/dias/miercoles.dart';
import 'package:gnosis/src/widgets/dias/viernes.dart';

class HorarioPage extends StatefulWidget {
  @override
  _HorarioPageState createState() => _HorarioPageState();
}

class _HorarioPageState extends State<HorarioPage> {
  Day _selectedDay = Day.MONDAY; // Día seleccionado inicialmente
  String dia = 'Lunes';
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
          title: const Text('Horario'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: const Text('Lunes'),
                onTap: () {
                  _changeSelectedDay(Day.MONDAY);
                  Navigator.pop(context);
                  dia = 'Lunes'; // Cerrar Drawer
                },
              ),
              ListTile(
                title: const Text('Martes'),
                onTap: () {
                  _changeSelectedDay(Day.TUESDAY);
                  Navigator.pop(context);
                  dia = 'Martes'; // Cerrar Drawer
                },
              ),
              ListTile(
                title: const Text('Miércoles'),
                onTap: () {
                  _changeSelectedDay(Day.WEDNESDAY);
                  Navigator.pop(context);
                  dia = 'Miercoles'; // Cerrar Drawer
                },
              ),
              ListTile(
                title: const Text('Jueves'),
                onTap: () {
                  _changeSelectedDay(Day.THURSDAY);
                  Navigator.pop(context);
                  dia = 'Jueves'; // Cerrar Drawer
                },
              ),
              ListTile(
                title: const Text('Viernes'),
                onTap: () {
                  _changeSelectedDay(Day.FRIDAY);
                  Navigator.pop(context);
                  dia = 'Viernes';
                  // Cerrar Drawer
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
      case Day.MONDAY:
        return const MondayWidget();
      case Day.TUESDAY:
        return const TuesdayWidget();
      case Day.WEDNESDAY:
        return const WednesdayWidget();
      case Day.THURSDAY:
        return const ThursdayWidget();
      case Day.FRIDAY:
        return const FridayWidget();

      default:
        return const Text('No hay widget para este día');
    }
  }
}

// Enumeración para representar los días de la semana
// ignore: constant_identifier_names
enum Day { MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY }

// Widgets de ejemplo para cada día (reemplácelos con sus widgets reales)

