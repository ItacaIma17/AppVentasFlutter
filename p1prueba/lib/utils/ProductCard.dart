import 'package:flutter/material.dart';

class ProductoCard extends StatelessWidget {
  final String? imageUrl;
  final String nombre;
  final double precio;
  final int stock;
  final String descripcion;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const ProductoCard({
    super.key,
    this.imageUrl,
    required this.nombre,
    required this.precio,
    required this.stock,
    required this.descripcion,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 215, 235, 248),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen o icono por defecto
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl ?? '',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 236, 9, 217),
                  child: const Icon(Icons.inventory, color: Colors.white),
                );
              },
            ),
          ),
          const SizedBox(width: 10),

          // Información del producto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text('Precio: ${precio.toStringAsFixed(2)}\€'),
                Text('Stock: $stock'),
                const SizedBox(height: 4),
                Text(
                  descripcion,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),

          // Botones de acción
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                tooltip: 'Editar producto',
                onPressed: onEdit,
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                tooltip: 'Eliminar producto',
                onPressed: onDelete,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
