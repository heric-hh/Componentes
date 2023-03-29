import 'package:componentes/ui/screens/screens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es', 'MX'), // American English
      ],
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
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme(
          color: Colors.blueGrey,
          elevation: 0
        ),
      ),
    );
  }
}