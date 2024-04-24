import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gnosis/src/widgets/icon_container.dart';
// Import the HorarioPage widget

class MyTableRow extends StatelessWidget {

  final String value;

  const MyTableRow({ required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        
        children: [
          Text(''),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(height: 50,)
        ],
      ),
    );
  }
}

class CalificacionesPage extends StatefulWidget {
  const CalificacionesPage({super.key});

  @override
  State<CalificacionesPage> createState() => _CalificacionesPageState();
}

class _CalificacionesPageState extends State<CalificacionesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 150,
          ),
          children: <Widget>[
            Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const Text('Calificaciones', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                const SizedBox(height: 30,),

               
                Table(
                border: TableBorder.all(
                  width: 2,
                  color: Colors.black,
                ),
                
                  children:  const [
                    
                    TableRow(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                           Color.fromARGB(172, 184, 102, 252),
                           Color.fromARGB(172, 217, 168, 255),
                           Color.fromARGB(172, 179, 0, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
                
              ),
              children: [
                
                MyTableRow(value: 'Algebra Lineal'),
                MyTableRow(value: '80'),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 184, 102, 252),
                           Color.fromARGB(172, 217, 168, 255),
                           Color.fromARGB(172, 179, 0, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Calculo'),
                MyTableRow(value: '78'),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 184, 102, 252),
                           Color.fromARGB(172, 217, 168, 255),
                           Color.fromARGB(172, 179, 0, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Programacion'),
                MyTableRow(value: '90'),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 184, 102, 252),
                           Color.fromARGB(172, 217, 168, 255),
                           Color.fromARGB(172, 179, 0, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Contabilidad'),
                MyTableRow(value: '80'),              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 184, 102, 252),
                           Color.fromARGB(172, 217, 168, 255),
                           Color.fromARGB(172, 179, 0, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Quimica'),
                MyTableRow(value: '70'),              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 184, 102, 252),
                           Color.fromARGB(172, 217, 168, 255),
                           Color.fromARGB(172, 179, 0, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Probabilidad'),
                MyTableRow(value: '90'),              ],
            ),
          ],
        )
              ],
            ),
          ],
        ),
      ),
    );
  }
}