
import 'package:flutter/material.dart';

class PagoPage extends StatefulWidget {
  const PagoPage({super.key});

  @override
  State<PagoPage> createState() => _PagoPageState();
}

class _PagoPageState extends State<PagoPage> {
  String tipoPago = "Pago único";
  String metodoPago = "Tarjeta";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pago"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [

            const Text(
              "Tipo de pago",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile<String>(
              title: const Text("Pago único"),
              value: "Pago único",
              groupValue: tipoPago,
              onChanged: (value) {
                setState(() {
                  tipoPago = value!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text("Dividir equitativamente"),
              value: "Equitativo",
              groupValue: tipoPago,
              onChanged: (value) {
                setState(() {
                  tipoPago = value!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text("Cada uno paga lo suyo"),
              value: "Individual",
              groupValue: tipoPago,
              onChanged: (value) {
                setState(() {
                  tipoPago = value!;
                });
              },
            ),

            const SizedBox(height: 25),

            const Text(
              "Método de pago",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            RadioListTile<String>(
              title: const Text("Tarjeta"),
              value: "Tarjeta",
              groupValue: metodoPago,
              onChanged: (value) {
                setState(() {
                  metodoPago = value!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text("Bizum"),
              value: "Bizum",
              groupValue: metodoPago,
              onChanged: (value) {
                setState(() {
                  metodoPago = value!;
                });
              },
            ),

            RadioListTile<String>(
              title: const Text("Efectivo"),
              value: "Efectivo",
              groupValue: metodoPago,
              onChanged: (value) {
                setState(() {
                  metodoPago = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Se recomienda dejar el pago en efectivo para el último pago para que la aplicación pueda descontar automáticamente los importes ya abonados.",
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "CONFIRMAR PAGO",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}