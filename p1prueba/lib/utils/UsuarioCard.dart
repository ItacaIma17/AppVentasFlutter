import 'package:flutter/material.dart';

class UsuarioCard extends StatelessWidget {
  final String? imageUrl;
  final String nombre;
  final VoidCallback? onEdit;
  final VoidCallback? onBlock;
  final VoidCallback? onDelete;

  const UsuarioCard({
    super.key,
    this.imageUrl,
    required this.nombre,
    this.onEdit,
    this.onBlock,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Imagen o avatar por defecto
          ClipOval(
            child: Image.network(
              imageUrl ?? '',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 0, 253, 84),
                  child: Icon(Icons.person, color: Colors.white),
                );
              },
            ),
          ),
          const SizedBox(width: 10),

          // Nombre del usuario
          Expanded(
            child: Text(
              nombre,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Íconos de acción
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.blue),
            tooltip: 'Editar usuario',//mensaje al pasar el raton por encima
            onPressed: onEdit,
          ),
          IconButton(
            icon: const Icon(Icons.block, color: Colors.grey),
            tooltip: 'Bloquear usuario',//mensaje al pasar el raton por encima
            onPressed: onBlock,
          ),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            tooltip: 'Eliminar usuario',//mensaje al pasar el raton por encima
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
