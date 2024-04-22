import 'package:flutter/material.dart';
import 'package:gnosis/src/widgets/icon_container.dart';
import 'package:gnosis/src/widgets/login_form.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
             colors: <Color>[
                Color.fromARGB(172, 102, 215, 252),
                Color.fromARGB(172, 132, 209, 235),
                Color.fromARGB(172, 180, 227, 243),
                Color.fromARGB(172, 200, 223, 230),
                Color.fromARGB(255, 255, 255, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.center
            ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 100,           
            ),
            children: const <Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(
              url: 'https://th.bing.com/th/id/R.3726b36db22a8d35f121b91c23528612?rik=%2bhVspPIqHdYlTw&riu=http%3a%2f%2ftecuruapan.edu.mx%2fwp-content%2fuploads%2f2017%2f10%2flogo_simbolo2.png&ehk=VL%2fQ2gfiaKqm5w2PhwQHWE6Cm8cFdZQNejd85gRlzac%3d&risl=&pid=ImgRaw&r=0',
            ),
             Text(
              'Bienvenido',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
             ),
              Text('Iniciar sesion', style: TextStyle(
                fontSize: 35.0 
                
              )),
              const Divider(
                height: 20.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
              LoginForm()
              
            ],
              )
              
            ],
      ),
    )
        );
  }
}
