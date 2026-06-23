import 'package:flutter/material.dart';
import 'hamburguesas_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'Tesoros para Compartir',
      'Jardines del Nilo',
      'Hamburguesas de los Faraones',
      'Hornos de Menfis',
      'Pergaminos de Alejandría',
      'Carnes del Desierto',
      'Tesoros del Mar Rojo',
      'Dulces de la Reina',
      'Refrescos del Oasis',
      'Zumos del Nilo',
      'Batidos del Palacio',
      'Smoothies Sagrados',
      'Limonadas de Alejandría',
      'Cafés de Menfis',
      'Infusiones del Templo',
      'Cócteles de los Dioses',
      'Shishas del Imperio',
    ];

    return Scaffold(
      body: Stack(
        children: [

          // ==========================
          // FONDO
          // ==========================
          Positioned.fill(
            child: Image.asset(
              'assets/images/backgrounds/menu.png',
              fit: BoxFit.cover,
            ),
          ),

          // OSCURECER FONDO
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.25),
            ),
          ),

          // ==========================
          // CONTENIDO
          // ==========================
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),

                child: Column(
                  children: [

                    // LOGO
                    Image.asset(
                      'assets/images/logo/logo.png',
                      width: 220,
                    ),

                    const SizedBox(height: 20),

                    // CATEGORÍAS
                    ...categories.map(
                      (category) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),

                        child: GestureDetector(
                          onTap: () {

                            // HAMBURGUESAS
                            if (category ==
                                'Hamburguesas de los Faraones') {

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HamburguesasPage(),
                                ),
                              );
                            }
                          },

                          child: Container(
                            height: 58,

                            decoration: BoxDecoration(
                              color:
                                  Colors.black.withValues(alpha: 0.55),

                              borderRadius:
                                  BorderRadius.circular(14),

                              border: Border.all(
                                color:
                                    const Color(0xFFD4AF37),
                                width: 1,
                              ),
                            ),

                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                horizontal: 18,
                              ),

                              child: Row(
                                children: [

                                  Expanded(
                                    child: Text(
                                      category,

                                      style:
                                          const TextStyle(
                                        color:
                                            Color(0xFFD4AF37),
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.w500,
                                      ),
                                    ),
                                  ),

                                  const Icon(
                                    Icons.chevron_right,
                                    color:
                                        Color(0xFFD4AF37),
                                    size: 28,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 180),
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