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
          _crearEntradaNombre(),
          _crearEntradaPassword(),
        ],
      ),
    );
  }
  
  Widget _crearEntradaNombre() {
  return TextField(
    autofocus: true,
    textCapitalization: TextCapitalization.words,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.indigo,
      fontWeight: FontWeight.bold,
    ),
    cursorColor: Colors.red,
    cursorRadius: const Radius.circular(16),
    cursorWidth: 5,
    //maxLength: 4,
    maxLines: null,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      hintText: "Escriba su nombre por favor",
      labelText: "Nombre: ",
      prefixIcon: const Icon(Icons.person),
      helperText: "",
      //prefix: const CircularProgressIndicator(),
      icon: Icon(Icons.person),
      iconColor: Colors.indigo
    ),
    onChanged: (valor) {
     _userName = valor;
     print(_userName);
    },
  );
}

Widget _crearEntradaPassword() {
  return TextField(
    autofocus: true,
    textCapitalization: TextCapitalization.words,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.indigo,
      fontWeight: FontWeight.bold,
    ),
    cursorColor: Colors.red,
    cursorRadius: const Radius.circular(16),
    cursorWidth: 5,
    maxLength: 8,
    // maxLines: null,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      hintText: "Escriba su contraseña por favor",
      labelText: "Password: ",
      prefixIcon: const Icon(Icons.password),
      helperText: "Escribe tu contraseña",
      //prefix: const CircularProgressIndicator(),
      icon: Icon(Icons.person),
      iconColor: Colors.indigo
    ),
    obscureText: true,
    keyboardType: TextInputType.number,
    onChanged: (valor) {
     _userName = valor;
     print(_userName);
    },
  );
}
}

