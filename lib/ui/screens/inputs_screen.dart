import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _crearEntrada(),
        ],
      ),
    );
  }
  
  Widget _crearEntrada() {
  return TextField(
    autofocus: true,
    textCapitalization: TextCapitalization.words,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20)
      ),
    ),
    onChanged: (valor) {
     _userName = valor;
     print(_userName);
    },
  );
}
}

