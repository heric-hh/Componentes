import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.indigo[200],
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.indigo[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text('Titulo de la alerta'),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Contenido de la alerta'),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: const Text('Aceptar')
            ),

            TextButton(
              onPressed: () =>  Navigator.of(context).pop(), 
              child: const Text('Cancelar')
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body: Center(
        
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context), 
          child: const Text('Mostrar Alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_return_outlined),
      ),
    );
  }
}