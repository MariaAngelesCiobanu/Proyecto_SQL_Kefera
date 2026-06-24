import 'package:flutter/material.dart';
import '../services/api_service.dart';

class BurgerDetailPage extends StatefulWidget {
  final int idProducto;

  const BurgerDetailPage({
    super.key,
    required this.idProducto,
  });

  @override
  State<BurgerDetailPage> createState() =>
      _BurgerDetailPageState();
}

class _BurgerDetailPageState
    extends State<BurgerDetailPage> {

  final ApiService apiService =
      ApiService();

  late Future<dynamic> detalleFuture;

  @override
  void initState() {
    super.initState();

    detalleFuture =
        apiService.obtenerDetalleProducto(
            widget.idProducto);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detalle Producto",
        ),
      ),

      body: FutureBuilder<dynamic>(
        future: detalleFuture,

        builder:
            (context, snapshot) {

          if (snapshot.connectionState ==
              ConnectionState.waiting) {

            return const Center(
              child:
                  CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {

            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          final producto =
              snapshot.data;

          return Padding(
            padding:
                const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  producto["nombre"] ??
                      "",
                  style:
                      const TextStyle(
                    fontSize: 28,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                    height: 20),

                Text(
                  producto["descripcion"]
                          ?.toString() ??
                      "",
                ),

                const SizedBox(
                    height: 20),

                Text(
                  "Precio: ${producto["precio"]}",
                ),

                Text(
                  "Calorías: ${producto["calorias"]}",
                ),

                Text(
                  "Picante: ${producto["nivelPicante"]}",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}