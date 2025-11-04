import 'package:p1prueba/screens/pantallaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:p1prueba/models/usuario.dart';

class CustomDrawer1 extends StatefulWidget {
  const CustomDrawer1({super.key});

  @override
  State<CustomDrawer1> createState() => _CustomDrawerState();
}

Usuario? usuarioActual;

class _CustomDrawerState extends State<CustomDrawer1> {
  void _PantallaPerfil() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  Pantallaprincipal()),
    );
  }

  @override
  Widget build(BuildContext context) {//drawer presonalizado que contiene los botones de (Pantalla Principal,Mi perfil,Exit) y sus estilos
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 65,
            color: Colors.blue,
            child: DrawerHeader(
              child: Row(
                children: [
                  SizedBox(width: 100),
                  Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, //Aplica al texto la negrita
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [Icon(Icons.house), Text("Pantalla Principal")],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pantallaprincipal(),
                ),
              );
            },
          ),
          ListTile(
            title: Row(children: [Icon(Icons.person), Text("Gestion de Perfiles")]),
            onTap: _PantallaPerfil,
          ),
          ListTile(
            title: Row(children: [Icon(Icons.exit_to_app), Text("Exit")]),
            onTap: () {
              setState(() {
                // Cerramos el Drawer primero
                Navigator.pop(context);

                // Borramos el usuario actual
                usuarioActual = null;

                // Luego navegamos al Login (pantalla principal) y eliminamos la pila de navegación
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Pantallaprincipal()),
                  (route) => false,
                );
              });
            },
          ),
        ],
      ),
    );
  }
}