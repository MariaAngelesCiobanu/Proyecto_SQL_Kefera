
import 'package:flutter/material.dart';
import '../models/carrito.dart';
import 'pago_page.dart';
import 'tipo_pago_page.dart';

class CarritoPage extends StatefulWidget {
  const CarritoPage({super.key});

  @override
  State<CarritoPage> createState() => _CarritoPageState();
}

class _CarritoPageState extends State<CarritoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrito"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Carrito.productos.length,
              itemBuilder: (context, index) {
                final item = Carrito.productos[index];

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(
                      item.producto["nombre"],
                    ),

                    subtitle: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${item.producto["precio"]} €",
                        ),
                        Text(
                          "Cantidad: ${item.cantidad}",
                        ),
                        Text(
                          "Subtotal: ${item.subtotal.toStringAsFixed(2)} €",
                        ),
                      ],
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle,
                          ),
                          onPressed: () {
                            setState(() {
                              Carrito.disminuir(item);
                            });
                          },
                        ),

                        IconButton(
                          icon: const Icon(
                            Icons.add_circle,
                          ),
                          onPressed: () {
                            setState(() {
                              Carrito.aumentar(item);
                            });
                          },
                        ),

                        IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              Carrito.eliminar(item);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                Text(
                  "Total: ${Carrito.total().toStringAsFixed(2)} €",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              const TipoPagoPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "PAGAR",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
