import 'package:flutter/material.dart';
import 'package:p1prueba/widgets/drawerAdmin.dart';
import 'package:p1prueba/screens/pantallaPrincipal.dart';
import 'package:p1prueba/utils/CustomButton.dart';
import 'package:p1prueba/utils/ProductCard.dart';

class Gestionproductos extends StatefulWidget {
  const Gestionproductos({super.key});

  @override
  State<Gestionproductos> createState() => _GestionproductosState();
}

class _GestionproductosState extends State<Gestionproductos> {
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
          "Gestion de Productos",
          style: TextStyle(color: Color.fromRGBO(10, 10, 10, 1)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ProductoCard(
                nombre: 'Producto 1',
                precio: 10,
                stock: 10,
                descripcion: 'Descripción del Producto 1',
                imageUrl:
                    'assets/images/messi.jpg', // Muestra ícono si falla
                onEdit: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Editar Producto 1')),
                  );
                },
                onDelete: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Eliminar Producto 1')),
                  );
                },
              ),
              ProductoCard(
                nombre: 'Producto 1',
                precio: 10,
                stock: 10,
                descripcion: 'Descripción del Producto 1',
                imageUrl:
                    'assets/images/sahur.jpg', // Muestra ícono si falla
                onEdit: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Editar Producto 1')),
                  );
                },
                onDelete: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Eliminar Producto 1')),
                  );
                },
              ),
              ProductoCard(
                nombre: 'Producto 1',
                precio: 10,
                stock: 10,
                descripcion: 'Descripción del Producto 1',
                imageUrl:
                    '#', // Muestra ícono si falla
                onEdit: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Editar Producto 1')),
                  );
                },
                onDelete: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Eliminar Producto 1')),
                  );
                },
              ),

              SizedBox(height: 200),
              // Botón de Nuevo usuario
              Container(
                width: 190,
                child: ElevatedButton(
                  style: customButtonStyle(),
                  onPressed: _Pantallaprincipal,
                  child: const Text("Añadir Producto"),
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
