import 'package:componentes/providers/menu_provider.dart';
import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:flutter/material.dart';
import 'package:componentes/utils/icons_mapping.dart';


class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de componentes'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /* print(menuProvider.opciones);
     menuProvider.loadData().then((opciones) {
     print('_lista: ');
     print(opciones);
  });
  return ListView(
    children: _listaItems(),
  );*/

  return FutureBuilder(
    future: menuProvider.loadData(),
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      //print('builder: ');
      print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>, context),
      );
    },
  );


}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  IconMapping iconMap = const IconMapping();

  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
      trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.indigo,),
      subtitle: Text(opt['texto2']),
      onTap: () {
        /*final route = MaterialPageRoute(
          builder: (context) {
            return const AlertsScreen();
          }*/
          Navigator.pushNamed(context, opt['ruta']);
      },
    );
    opciones
      ..add(tile)
      ..add(const Divider());
  });
  return opciones;
}