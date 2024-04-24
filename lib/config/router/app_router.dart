import 'package:gnosis/src/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:gnosis/src/screens/login.dart';
import 'package:gnosis/src/screens/register.dart';
import 'package:gnosis/src/screens/views/profile.dart';
import 'package:gnosis/src/screens/views/calificacione.dart';
import 'package:gnosis/src/screens/views/noticias.dart';
import 'package:gnosis/src/screens/views/horario.dart';
import 'package:gnosis/src/screens/views/home-page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(),
    
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) =>  HomePage(),
    
    ),
    GoRoute(
      path: '/news',
      builder: (context, state) => const NewsPage(),
    
    ),
    GoRoute(
      path: '/calificaciones',
      builder: (context, state) => const CalificacionesPage(),
    
    ),
    GoRoute(
      path: '/horario',
      builder: (context, state) => const HorarioPage(),
    
    ),

    GoRoute(
          path: '/login', 
          builder: (context, state) => const LoginPage(),),
          
    GoRoute(
          path: '/register', 
          builder: (context, state) => RegisterPage(),)
      

    
  ],
);
