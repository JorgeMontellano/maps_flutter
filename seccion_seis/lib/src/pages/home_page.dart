import 'package:flutter/material.dart';
import 'package:seccion_seis/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(menuProvider.opciones);
    return ListView(
      children: _listaItem(),
    );
  }

  List<Widget> _listaItem() {
    return [];
  }
}
