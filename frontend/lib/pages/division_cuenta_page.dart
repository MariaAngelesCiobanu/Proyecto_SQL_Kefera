import 'package:flutter/material.dart';
import '../services/api_service.dart';

class DivisionCuentaPage extends StatefulWidget {
  const DivisionCuentaPage({super.key});

  @override
  State<DivisionCuentaPage> createState() =>
      _DivisionCuentaPageState();
}

class _DivisionCuentaPageState
    extends State<DivisionCuentaPage> {

  final ApiService apiService = ApiService();

  late Future<List<dynamic>> productosFuture;

  int personas = 2;

  double total = 0;

  final Set<int> productosSeleccionados = {};

  @override
  void initState() {
    super.initState();

    productosFuture =
        apiService.obtenerProductos();
  }

  void calcularTotal(
      List<dynamic> productos) {

    total = 0;

    for (var producto in productos) {

      if (productosSeleccionados.contains(
          producto["idProducto"])) {

        total +=
            (producto["precio"] as num)
                .toDouble();
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Dividir Cuenta",
        ),
      ),

      body: FutureBuilder<List<dynamic>>(
        future: productosFuture,

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

          final productos =
              snapshot.data ?? [];

          calcularTotal(productos);

          return Column(
            children: [

              Expanded(
                child: ListView.builder(

                  itemCount:
                      productos.length,

                  itemBuilder:
                      (context, index) {

                    final producto =
                        productos[index];

                    return CheckboxListTile(

                      title: Text(
                        producto["nombre"] ??
                            "",
                      ),

                      subtitle: Text(
                        "${producto["precio"]} €",
                      ),

                      value:
                          productosSeleccionados
                              .contains(
                        producto[
                            "idProducto"],
                      ),

                      onChanged: (value) {

                        setState(() {

                          if (value ==
                              true) {

                            productosSeleccionados
                                .add(
                              producto[
                                  "idProducto"],
                            );
                          } else {

                            productosSeleccionados
                                .remove(
                              producto[
                                  "idProducto"],
                            );
                          }
                        });
                      },
                    );
                  },
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.all(
                  20,
                ),

                child: Column(
                  children: [

                    Text(
                      "Total: ${total.toStringAsFixed(2)} €",

                      style:
                          const TextStyle(
                        fontSize: 24,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center,

                      children: [

                        IconButton(
                          onPressed: () {

                            if (personas >
                                1) {

                              setState(() {
                                personas--;
                              });
                            }
                          },

                          icon: const Icon(
                            Icons
                                .remove_circle,
                            size: 40,
                          ),
                        ),

                        Text(
                          personas
                              .toString(),

                          style:
                              const TextStyle(
                            fontSize: 30,
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        ),

                        IconButton(
                          onPressed: () {

                            setState(() {
                              personas++;
                            });
                          },

                          icon: const Icon(
                            Icons
                                .add_circle,
                            size: 40,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Container(
                      width:
                          double.infinity,

                      height: 60,

                      child:
                          ElevatedButton(

                        onPressed: () {

                          setState(() {});
                        },

                        child: const Text(
                          "DIVIDIR CUENTA",
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      personas > 0
                          ? "Cada persona paga ${(total / personas).toStringAsFixed(2)} €"
                          : "",

                      style:
                          const TextStyle(
                        fontSize: 22,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}