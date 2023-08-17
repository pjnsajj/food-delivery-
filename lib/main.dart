import 'package:esh_pizza/screens/home_screen.dart';
import 'package:esh_pizza/screens/auth_screen.dart';
import 'package:esh_pizza/screens/menu_screen/menu.dart';
import 'package:esh_pizza/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'esh_pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.orange,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Color.fromARGB(255, 104, 103, 103),
          )),
      routes: {
        'auth': (context) => const AuthList(),
        '/': (context) => const HomeScreen(),
        'auth_list': (context) => const AuthList(),
        'register_list': (context) => const RegisterList(),
        'menu': (context) => const Menu(),
      },
      initialRoute: 'main_screen',
    );
  }
}
