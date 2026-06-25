import 'package:flutter/material.dart';
import '../models/carrito.dart';
import 'pago_page.dart';

class DivisionCuentaPage extends StatefulWidget {
  const DivisionCuentaPage({super.key});

  @override
  State<DivisionCuentaPage> createState() =>
      _DivisionCuentaPageState();
}

class _DivisionCuentaPageState extends State<DivisionCuentaPage> {

  int personas = 2;
  bool dividirEquitativamente = true;

  final Set<int> productosSeleccionados = {};

  double get totalSeleccionado {

    double total = 0;

    for (final item in Carrito.productos) {

      if (dividirEquitativamente ||
          productosSeleccionados.contains(
              item.producto["idProducto"])) {

        total += item.subtotal;
      }
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Dividir cuenta"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              "Tipo de división",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile(
              title: const Text(
                  "Dividir equitativamente"),
              value: true,
              groupValue: dividirEquitativamente,
              onChanged: (v) {
                setState(() {
                  dividirEquitativamente = true;
                });
              },
            ),

            RadioListTile(
              title: const Text(
                  "Cada uno paga lo suyo"),
              value: false,
              groupValue: dividirEquitativamente,
              onChanged: (v) {
                setState(() {
                  dividirEquitativamente = false;
                });
              },
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [

                IconButton(
                  onPressed: () {
                    if (personas > 1) {
                      setState(() {
                        personas--;
                      });
                    }
                  },
                  icon: const Icon(
                    Icons.remove_circle,
                  ),
                ),

                Text(
                  personas.toString(),
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      personas++;
                    });
                  },
                  icon: const Icon(
                    Icons.add_circle,
                  ),
                ),
              ],
            ),

            if (!dividirEquitativamente)
              Expanded(
                child: ListView.builder(
                  itemCount: Carrito.productos.length,
                  itemBuilder: (context, index) {

                    final item =
                        Carrito.productos[index];

                    return CheckboxListTile(
                      value:
                          productosSeleccionados.contains(
                        item.producto["idProducto"],
                      ),
                      title: Text(
                        item.producto["nombre"],
                      ),
                      subtitle: Text(
                        "Cantidad: ${item.cantidad}    ${item.subtotal.toStringAsFixed(2)} €",
                      ),
                      onChanged: (value) {

                        setState(() {

                          if (value == true) {
                            productosSeleccionados.add(
                              item.producto["idProducto"],
                            );
                          } else {
                            productosSeleccionados.remove(
                              item.producto["idProducto"],
                            );
                          }
                        });
                      },
                    );
                  },
                ),
              ),

            const SizedBox(height: 20),

            Text(
              "Total: ${totalSeleccionado.toStringAsFixed(2)} €",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Cada persona paga ${(totalSeleccionado / personas).toStringAsFixed(2)} €",
              style: const TextStyle(
                fontSize: 18,
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
                          const PagoPage(),
                    ),
                  );
                },
                child: const Text(
                  "CONTINUAR AL PAGO",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
