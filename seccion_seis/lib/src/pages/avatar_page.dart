import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(0.2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.biografiasyvidas.com/biografia/t/fotos/turing.jpg'),
              radius: 29.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.nationalgeographic.com.es/medio/2019/05/30/alan-turing_8c5d84c7_1200x630.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
