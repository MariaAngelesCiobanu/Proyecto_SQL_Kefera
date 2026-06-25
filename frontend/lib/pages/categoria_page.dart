import 'package:flutter/material.dart';
import '../services/api_service.dart';
import 'burger_detail_page.dart';

class CategoriaPage extends StatefulWidget {
  final int idCategoria;
  final String nombreCategoria;

  const CategoriaPage({
    super.key,
    required this.idCategoria,
    required this.nombreCategoria,
  });

  @override
  State<CategoriaPage> createState() =>
      _CategoriaPageState();
}

class _CategoriaPageState
    extends State<CategoriaPage> {

  final ApiService apiService = ApiService();

  late Future<List<dynamic>> productosFuture;

  @override
  void initState() {
    super.initState();

    productosFuture = apiService
        .obtenerProductosPorCategoria(
            widget.idCategoria);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nombreCategoria),
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

          final productos =
              snapshot.data ?? [];

          if (productos.isEmpty) {
            return const Center(
              child: Text(
                "No hay productos",
              ),
            );
          }

          return ListView.builder(
            itemCount: productos.length,

            itemBuilder: (context, index) {

              final producto =
                  productos[index];

              return Card(
                margin:
                    const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),

                child: ListTile(
                  title: Text(
                    producto["nombre"],
                  ),

                  subtitle: Text(
                    "${producto["precio"]} €",
                  ),

                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),

                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            BurgerDetailPage(
                          idProducto:
                              producto["idProducto"],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}