import 'package:flutter/material.dart';
import 'package:gnosis/src/widgets/dias/lunes.dart';

class HorarioPage extends StatefulWidget {
  @override
  _HorarioPageState createState() => _HorarioPageState();
}

class _HorarioPageState extends State<HorarioPage> {
  Day _selectedDay = Day.MONDAY; // Día seleccionado inicialmente

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
        title: Text('Horario'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Lunes'),
              onTap: () {
        _changeSelectedDay(Day.MONDAY);
        Navigator.pop(context); // Cerrar Drawer
      },
            ),
            ListTile(
              title: Text('Martes'),
              onTap: () {
        _changeSelectedDay(Day.TUESDAY);
        Navigator.pop(context); // Cerrar Drawer
      },
            ),
            ListTile(
              title: Text('Miércoles'),
              onTap: () {
        _changeSelectedDay(Day.WEDNESDAY);
        Navigator.pop(context); // Cerrar Drawer
      },
            ),
            ListTile(
              title: Text('Jueves'),
              onTap: () {
        _changeSelectedDay(Day.THURSDAY);
        Navigator.pop(context); // Cerrar Drawer
      },
            ),
            ListTile(
              title: Text('Viernes'),
              onTap: () {
        _changeSelectedDay(Day.FRIDAY);
        Navigator.pop(context); // Cerrar Drawer
      },
            ),
          ],
        ),
      ),
      body: Center(
        child: _selectedDayWidget,
      ),
    );
  }

  // Widget para mostrar el widget del día seleccionado
  Widget get _selectedDayWidget {
    switch (_selectedDay) {
      case Day.MONDAY:
        return MondayWidget();
      case Day.TUESDAY:
        return TuesdayWidget();
      // ... Widgets para otros días
      default:
        return Text('No hay widget para este día');
    }
  }
}

// Enumeración para representar los días de la semana
enum Day { MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY }

// Widgets de ejemplo para cada día (reemplácelos con sus widgets reales)


class TuesdayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Horario del martes');
  }
}
