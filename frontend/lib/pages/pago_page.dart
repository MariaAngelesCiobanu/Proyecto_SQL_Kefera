import 'package:flutter/material.dart';

class Pago_page extends StatefulWidget {
  const Pago_page({super.key});

  @override
  State<Pago_page> createState() => _Pago_pageState();
}

class _Pago_pageState extends State<Pago_page> {

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

            RadioListTile(
              title: const Text("Pago único"),
              value: "Pago único",
              groupValue: tipoPago,
              onChanged: (value) {
                setState(() {
                  tipoPago = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Dividir equitativamente"),
              value: "Equitativo",
              groupValue: tipoPago,
              onChanged: (value) {
                setState(() {
                  tipoPago = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Cada uno paga lo suyo"),
              value: "Individual",
              groupValue: tipoPago,
              onChanged: (value) {
                setState(() {
                  tipoPago = value.toString();
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

            RadioListTile(
              title: const Text("Tarjeta"),
              value: "Tarjeta",
              groupValue: metodoPago,
              onChanged: (value) {
                setState(() {
                  metodoPago = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Bizum"),
              value: "Bizum",
              groupValue: metodoPago,
              onChanged: (value) {
                setState(() {
                  metodoPago = value.toString();
                });
              },
            ),

            RadioListTile(
              title: const Text("Efectivo"),
              value: "Efectivo",
              groupValue: metodoPago,
              onChanged: (value) {
                setState(() {
                  metodoPago = value.toString();
                });
              },
            ),

            const SizedBox(height: 20),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Se recomienda dejar el pago en efectivo para el último, ya que la aplicación irá descontando automáticamente los importes ya abonados.",
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("CONFIRMAR PAGO"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}