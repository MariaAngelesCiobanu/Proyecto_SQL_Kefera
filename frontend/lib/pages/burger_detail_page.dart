
import 'package:flutter/material.dart';
import '../models/carrito.dart';
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

  final ApiService apiService = ApiService();

  late Future<dynamic> detalleFuture;

  @override
  void initState() {
    super.initState();

    detalleFuture =
        apiService.obtenerDetalleProducto(
      widget.idProducto,
    );
  }
  String obtenerImagen(String nombre) {
  switch (nombre.toLowerCase()) {
    case "bestia del nilo":
      return "assets/images/products/burgers/bestia_del_nilo.jpg";

    case "faraón supremo":
      return "assets/images/products/burgers/faraon_supremo.jpg";

    case "guardián de anubis":
      return "assets/images/products/burgers/guardian_anubis.jpg";

    case "ojo de horus":
      return "assets/images/products/burgers/ojo_horus.jpg";

    case "reina cleopatra":
      return "assets/images/products/burgers/reina_cleopatra.jpg";

    case "trono de ra":
      return "assets/images/products/burgers/trono_ra.jpg";

    default:
      return "assets/images/logo/logo.png";
  }
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Detalle"),
      ),

      body: FutureBuilder<dynamic>(
        future: detalleFuture,

        builder: (context, snapshot) {

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

          final producto = snapshot.data;

          return SingleChildScrollView(

            padding:
                const EdgeInsets.all(20),

            child: Column(

              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    obtenerImagen(producto["nombre"]),
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                producto["nombre"] ?? "",
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD4AF37),
                ),
              ),

               const SizedBox(height: 10),

                Text(
                  "${producto["precio"]} €",
                  style: const TextStyle(
                    fontSize: 28,
                    color: Color(0xFFD4AF37),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  producto["descripcion"] ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                Card(
                  color: Colors.black87,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Color(0xFFD4AF37),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "⚡ ${producto["calorias"]} kcal",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "🌶 Nivel de picante: ${producto["nivelPicante"]}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "⏱ ${producto["tiempoPreparacion"]} min",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                if (producto["historiaEgipcia"] != null)
                  Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.all(16),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [

                          const Text(
                            "Historia",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Text(
                            producto["historiaEgipcia"],
                          ),
                        ],
                      ),
                    ),
                  ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4AF37),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),

                    onPressed: () {

                      Carrito.agregar(producto);

                      ScaffoldMessenger.of(context)
                          .showSnackBar(

                        SnackBar(
                          backgroundColor:
                              const Color(0xFFD4AF37),

                          content: Text(
                            "${producto["nombre"]} añadido al carrito",
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },

                    child: const Text(
                      "🛒 AÑADIR AL CARRITO",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
