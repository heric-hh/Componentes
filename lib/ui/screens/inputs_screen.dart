import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String _userName = '';
  String _userPassword = '';
  String _userEmail = '';
  String _email = '';
  String _fecha = '';
  final TextEditingController _inputFieldDataController = TextEditingController();
  


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
          const Divider(),
          _crearEntradaPassword(),
          const Divider(),
          _crearEntradaMail(),
          const Divider(),
          _crearEntradaFecha(context),

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
      //icon: Icon(Icons.person),
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
    //textCapitalization: TextCapitalization.words,
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
      //icon: Icon(Icons.person),
      iconColor: Colors.indigo
    ),
    obscureText: true,
    keyboardType: TextInputType.number,
    onChanged: (valor) {
     _userPassword = valor;
     print(_userPassword);
    },
  );
}

Widget _crearEntradaMail() {
  return TextField(
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.indigo,
      fontWeight: FontWeight.bold,
    ),
    cursorColor: Colors.red,
    cursorRadius: const Radius.circular(16),
    // maxLines: null,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      hintText: "Escribe tu email",
      labelText: "email: ",
      prefixIcon: const Icon(Icons.mail),
      helperText: "Escribe tu email",
      //prefix: const CircularProgressIndicator(),
      //icon: Icon(Icons.person),
      iconColor: Colors.indigo
    ),
    // obscureText: true,
    keyboardType: TextInputType.emailAddress,
    onChanged: (valor) {
     _userEmail = valor;
     print(_userEmail);
    },
  );
}

Widget _crearEntradaFecha(BuildContext context) {
  return TextField(
    enableInteractiveSelection: false,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.indigo,
      fontWeight: FontWeight.bold,
    ),
    cursorColor: Colors.red,
    cursorRadius: const Radius.circular(16),
    // maxLines: null,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      hintText: "Escribe tu fecha de nacimiento",
      labelText: "Fecha de nacimiento: ",
      prefixIcon: const Icon(Icons.date_range),
      helperText: "Escribe tu fecha de nacimiento",
      //prefix: const CircularProgressIndicator(),
      //icon: Icon(Icons.person),
      iconColor: Colors.indigo
    ),
    // obscureText: true,
    //keyboardType: TextInputType.datetime,
    onTap: () {
      Focus.of(context).requestFocus( FocusNode() );
      _selectDate(context);
    },
  );
}

_selectDate(BuildContext context) async {
  DateTime? picked = await showDatePicker(
    context: context, 
    initialDate: DateTime.now(), 
    firstDate: DateTime(2018), 
    lastDate: DateTime(2025),
  );

  if (picked != null) {
    setState(() {
      _fecha = picked.toString();
      _inputFieldDataController.text = _fecha;
    });
  }
}

}

