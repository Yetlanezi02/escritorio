import 'package:flutter/material.dart';

import 'navigator.dart';

void main() => runApp(Escritorio());

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

void navegarAEscritorio() {
  navigatorKey.currentState!
      .push(MaterialPageRoute(builder: (context) => Escritorio()));
}

void navegarAProductos() {
  navigatorKey.currentState!
      .push(MaterialPageRoute(builder: (context) => Productos()));
}

class Escritorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escritorio"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 10,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                navegarAProductos();
              },
              child: ListTile(
                title: Text('Productos',

                  textAlign: TextAlign.center,
                ),
                subtitle: Image(
                  image: AssetImage("C:\Users\yetla\StudioProjects\escritorio\Imagenes\productos.png")
                )
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class Productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Productos"),
        ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 10,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                navegarAProductos();
              },
            child: ListTile(
              title: Text('Productos',

                textAlign: TextAlign.center,
            ),
            ),
          ),
          ),
        ]
      ),
    );
  }
}