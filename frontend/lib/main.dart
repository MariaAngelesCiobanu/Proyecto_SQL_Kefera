import 'package:flutter/material.dart';
import 'pages/menu_page.dart';
import 'pages/burger_detail_page.dart';
import 'pages/division_cuenta_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/pago_page.dart';
import 'pages/tipo_pago_page.dart';

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
    elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFFD4AF37),
    foregroundColor: Colors.black,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
  ),
),
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
      padding: const EdgeInsets.fromLTRB(
        30,
        0,
        30,
        55,
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [

          // EXPLORAR CARTA
          SizedBox(
            width: double.infinity,
            height: 58,

            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFD4AF37),
                foregroundColor:
                    Colors.black,

                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16),
                ),
              ),

              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const MenuPage(),
                  ),
                );
              },

              child: const Text(
                "📖 EXPLORAR CARTA",

                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // PAGAR CUENTA
          SizedBox(
            width: double.infinity,
            height: 58,

            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFD4AF37),
                foregroundColor:
                    Colors.black,

                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16),
                ),
              ),

              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                        builder: (_) => const TipoPagoPage(),
                  ),
                );
              },

              child: const Text(
                "💳 PAGAR CUENTA",

                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // LOGIN
          SizedBox(
            width: double.infinity,
            height: 58,

            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFD4AF37),
                foregroundColor:
                    Colors.black,

                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16),
                ),
              ),

              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const LoginPage(),
                  ),
                );
              },

              child: const Text(
                "👤 INICIAR SESIÓN",

                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // REGISTRO
          SizedBox(
            width: double.infinity,
            height: 58,

            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFD4AF37),
                foregroundColor:
                    Colors.black,

                shape:
                    RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16),
                ),
              ),

              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const RegisterPage(),
                  ),
                );
              },

              child: const Text(
                "📝 REGISTRARSE",

                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
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