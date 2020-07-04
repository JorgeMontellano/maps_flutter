import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Ya quedo'),
          color: Colors.blue,
          onPressed: () => _mostrarAlert(context),
          shape: StadiumBorder(),
          textColor: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text('Pagina de Alerta'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

void _mostrarAlert(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
            title: Text('Titulo'), content: Text('El contenido'));
      });
}
