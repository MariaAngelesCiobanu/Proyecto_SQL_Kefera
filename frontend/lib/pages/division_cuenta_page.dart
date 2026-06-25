import 'package:flutter/material.dart';
import '../models/carrito.dart';
import 'pago_page.dart';

class DivisionCuentaPage extends StatefulWidget {
  const DivisionCuentaPage({super.key});

  @override
  State<DivisionCuentaPage> createState() =>
      _DivisionCuentaPageState();
}

class _DivisionCuentaPageState
    extends State<DivisionCuentaPage> {

  int personas = 2;

  double get total => Carrito.total();

  @override
  Widget build(BuildContext context) {

    if (Carrito.productos.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Dividir cuenta"),
        ),
        body: const Center(
          child: Text(
            "No hay productos en el carrito.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

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
              "División equitativa",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Selecciona el número de personas para dividir el importe total de la cuenta.",
            ),

            const SizedBox(height: 30),

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
                    size: 40,
                  ),
                ),

                Text(
                  personas.toString(),
                  style: const TextStyle(
                    fontSize: 32,
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
                    size: 40,
                  ),
                ),
              ],
            ),

            const Spacer(),

            Text(
              "Total: ${total.toStringAsFixed(2)} €",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Cada persona paga ${(total / personas).toStringAsFixed(2)} €",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 25),

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