import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:componentes/ui/screens/home_page_temp.dart';
import 'package:componentes/ui/screens/inputs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //home: HomePageTemp(),
      routes: <String, WidgetBuilder> {
        '/' :(context) => const HomePageTemp(),
        'alert' :(context) => const AlertsScreen(),
        'inputs' :(context) => const InputsScreen(),
      },
      onGenerateRoute: (settings) {
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => const AlertsScreen()  
        );
      },
    );
  }
}