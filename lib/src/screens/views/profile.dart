import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gnosis/src/widgets/icon_container.dart';
import 'package:gnosis/src/widgets/profile_container.dart';
import 'package:go_router/go_router.dart';
// Import the HorarioPage widget

class MyTableRow extends StatelessWidget {

  final String value;

  const MyTableRow({ required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
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

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 100,
          ),
          children: <Widget>[
            Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const Text('Mi Perfil', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10,),
                const ProfileContainer(
                  url: 'https://camo.githubusercontent.com/835fd824229cc52cf22895fcb5d5af590a85a2dc1e8c2015f62ea14bf7fa8b13/68747470733a2f2f6d656469612e6c6963646e2e636f6d2f646d732f696d6167652f44344530334151465546714374415338684f672f70726f66696c652d646973706c617970686f746f2d736872696e6b5f3830305f3830302f302f313731333839373934303331323f653d3137313934343634303026763d6265746126743d504c663635344b63647257356337304d5733595a4b365638775f50336f4d64694a35366a365961796b3459',
                ),

                
                SizedBox(height: 30,),

               
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
                           Color.fromARGB(172, 102, 215, 252),
                           Color.fromARGB(172, 168, 233, 255),
                           Color.fromARGB(172, 0, 191, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
                
              ),
              children: [
                
                MyTableRow(value: 'No.Control'),
                MyTableRow(value: '123456789'),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 102, 215, 252),
                    Color.fromARGB(172, 168, 233, 255),
                    Color.fromARGB(172, 0, 191, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Nombre'),
                MyTableRow(value: '<NAME>'),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 102, 215, 252),
                    Color.fromARGB(172, 168, 233, 255),
                    Color.fromARGB(172, 0, 191, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Grupo'),
                MyTableRow(value: '<GRUPO>'),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(172, 102, 215, 252),
                    Color.fromARGB(172, 168, 233, 255),
                    Color.fromARGB(172, 0, 191, 255),
                  ],
                  begin: Alignment.topLeft,
                ),
              ),
              children: [
                MyTableRow(value: 'Correo'),
                MyTableRow(value: '<EMAIL>'),              ],
            ),
          ],
        ),
        Divider(height: 20, color: Colors.transparent,),
        SizedBox(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              onPressed: () {
                
                    GoRouter.of(context).go('/');
                    
                    
                  },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 99, 208, 255),
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text(
                'Cerrar sesion',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}