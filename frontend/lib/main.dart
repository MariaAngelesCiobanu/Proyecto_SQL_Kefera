import 'package:flutter/material.dart';
import 'pages/menu_page.dart';
import 'pages/burger_detail_page.dart';
import 'pages/division_cuenta_page.dart';

void main() {
  runApp(const KeferaApp());
}

class KeferaApp extends StatelessWidget {
  const KeferaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Kefera',

  theme: ThemeData(
    scaffoldBackgroundColor: const Color(0xFF0A0A0A),
  ),

  routes: {
    '/detalle': (context) {

      final id = ModalRoute.of(context)!
          .settings
          .arguments as int;

      return BurgerDetailPage(
        idProducto: id,
      );
    },
  },

  home: const HomePage(),
);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // FONDO COMPLETO
          Positioned.fill(
            child: Image.asset(
              'assets/images/backgrounds/home.png',
              fit: BoxFit.cover,
            ),
          ),

          // CAPA OSCURA SUAVE
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.15),
            ),
          ),

          // BOTONES
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // VER CARTA
                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MenuPage(),
                            ),
                          );
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD4AF37),
                          foregroundColor: Colors.black,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),

                        child: const Text(
                          'VER CARTA',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                  SizedBox(
  width: double.infinity,
  height: 58,
  child: ElevatedButton(
    onPressed: () {

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>
              const DivisionCuentaPage(),
        ),
      );
    },

    child: const Text(
      'DIVIDIR CUENTA',
    ),
  ),
),

                    // RESERVAR
                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: OutlinedButton(
                        onPressed: () {},

                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Color(0xFFD4AF37),
                            width: 1.5,
                          ),

                          backgroundColor: Colors.black.withValues(alpha: 0.25),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        

                        child: const Text(
                          'RESERVAR MESA',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}