import 'package:flutter/material.dart';

import 'pago_page.dart';
import 'division_cuenta_page.dart';

class TipoPagoPage extends StatelessWidget {
  const TipoPagoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagar cuenta"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Icon(
              Icons.payments_rounded,
              size: 90,
              color: Color(0xFFD4AF37),
            ),

            const SizedBox(height: 25),

            const Text(
              "¿Cómo quieres pagar?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 45),

            SizedBox(
              width: double.infinity,
              height: 60,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.credit_card),

                label: const Text(
                  "PAGO ÚNICO",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PagoPage(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 60,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.groups),

                label: const Text(
                  "DIVIDIR CUENTA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          const DivisionCuentaPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}