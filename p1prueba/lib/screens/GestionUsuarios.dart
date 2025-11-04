import 'package:flutter/material.dart';
import 'package:p1prueba/widgets/drawerAdmin.dart';
import 'package:p1prueba/utils/CustomButton.dart';
import 'package:p1prueba/screens/pantallaPrincipal.dart';
import 'package:p1prueba/utils/UsuarioCard.dart';

class Gestionusuarios extends StatefulWidget {
  const Gestionusuarios({super.key});

  @override
  State<Gestionusuarios> createState() => _GestionusuariosState();
}

class _GestionusuariosState extends State<Gestionusuarios> {
  void _Pantallaprincipal() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Pantallaprincipal()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer1(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 181, 247),
        title: const Text(
          "Gestion de Usuarios",
          style: TextStyle(color: Color.fromRGBO(10, 10, 10, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              UsuarioCard(
                nombre: 'imagol',
                imageUrl:
                    'https://i.pravatar.cc/150?img=3', // imagen de demostracion
              ),
              UsuarioCard(
                nombre: 'Imagol',
                imageUrl:
                    'https://i.pravatar.cc/150?img=3', // imagen de demostracion
              ),
              UsuarioCard(
                nombre: 'Imagol',
                imageUrl:
                    'https://i.pravatar.cc/150?img=3', // imagen de demostracion
              ),
              UsuarioCard(
                nombre: 'Imagol',
                imageUrl:
                    'https://i.pravatar.cc/150?img=3', // imagen de demostracion
              ),

              SizedBox(height: 300),
              // Botón de Nuevo usuario
              Container(
                width: 170,
                child: ElevatedButton(
                  style: customButtonStyle(),
                  onPressed: _Pantallaprincipal,
                  child: const Text("Nuevo Usuario"),
                ),
              ),
              const SizedBox(height: 10),

              // Botón de Volver
              Container(
                width: 150,
                child: ElevatedButton(
                  style: customButtonStyle2(),
                  onPressed: _Pantallaprincipal,
                  child: const Text("Volver"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
