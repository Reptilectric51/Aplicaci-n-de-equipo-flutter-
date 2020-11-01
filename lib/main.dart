import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Renta y prestamo de libros"),
          ),
          drawer: MenuLateral(),
        ));
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Nombre de usuario"), //Nombre del usuario
            accountEmail: Text(
                "Correo@correo.com"), //Dirección de correo electronico del usuario
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://ichef.bbci.co.uk/news/660/cpsprodpb/6AFE/production/_102809372_machu.jpg"), //Foto de prefil del usuario
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text(
                "Mi cuenta",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new ListTile(
            title: Text("Categorias"),
            onTap: () {},
          ),
          new ListTile(
            title: Text("Mis compras/rentas"),
          ),
          new ListTile(
            title: Text("Salir"),
          )
        ],
      ),
    );
  }
}
