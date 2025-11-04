import 'package:flutter/material.dart';
import 'package:p1prueba/widgets/drawerAdmin.dart';
import 'package:p1prueba/utils/CustomButton.dart';
import 'package:p1prueba/screens/pantallaPrincipal.dart';

class Pantallainiciosesion extends StatefulWidget {
  const Pantallainiciosesion({super.key});

  @override
  State<Pantallainiciosesion> createState() => _PantallainiciosesionState();
}

class _PantallainiciosesionState extends State<Pantallainiciosesion> {
  void _Pantallaprincipal() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Pantallaprincipal()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:CustomDrawer1(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 181, 247),
        title: const Text(
          "Administrador",
          style: TextStyle(color: Color.fromRGBO(10, 10, 10, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              Container(
                  width: 210,
                  child: ElevatedButton(
                    style: customButtonStyle2(),
                    onPressed: _Pantallaprincipal,
                    child: const Text("Gestion De Usuarios"),
                  ),
                ),
                const SizedBox(height: 35),

                Container(
                  width: 220,
                  child: ElevatedButton(
                    style: customButtonStyle2(),
                    onPressed: _Pantallaprincipal,
                    child: const Text("Gestion De Productos"),
                  ),
                ),
                const SizedBox(height: 35),

                Container(
                  width: 210,
                  child: ElevatedButton(
                    style: customButtonStyle2(),
                    onPressed: _Pantallaprincipal,
                    child: const Text("Gestion De Pedidos"),
                  ),
                ),
                const SizedBox(height: 35),

                Container(
                  width: 220,
                  child: ElevatedButton(
                    style: customButtonStyle2(),
                    onPressed: _Pantallaprincipal,
                    child: const Text("Gestion De Inventario"),
                  ),
                ),
                const SizedBox(height: 35),
            ],
          ),
        ),
      ),



    );
  }
}