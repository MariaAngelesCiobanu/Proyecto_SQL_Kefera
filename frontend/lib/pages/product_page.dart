import 'package:flutter/material.dart';
import '../services/api_service.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  final ApiService apiService = ApiService();

  late Future<List<dynamic>> productosFuture;

  @override
  void initState() {
    super.initState();
    productosFuture = apiService.obtenerProductos();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos Kefera"),
      ),

      body: FutureBuilder<List<dynamic>>(
        future: productosFuture,

        builder: (context, snapshot) {

          if (snapshot.connectionState ==
              ConnectionState.waiting) {

            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {

            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          final productos = snapshot.data ?? [];

          return ListView.builder(
            itemCount: productos.length,

            itemBuilder: (context, index) {

              final producto = productos[index];

              return ListTile(
  title: Text(
    producto["nombre"] ?? "",
  ),

  subtitle: Text(
    "${producto["precio"]}",
  ),

  trailing: const Icon(
    Icons.arrow_forward_ios,
  ),

  onTap: () {

    Navigator.pushNamed(
      context,
      '/detalle',
      arguments: producto["idProducto"],
    );
  },
);
            },
          );
        },
      ),
    );
  }
}