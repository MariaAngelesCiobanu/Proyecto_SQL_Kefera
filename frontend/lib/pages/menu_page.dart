import 'package:flutter/material.dart';
import 'categoria_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {

    final categorias = {
      'Tesoros para Compartir': 1,
      'Jardines del Nilo': 2,
      'Hamburguesas de los Faraones': 3,
      'Hornos de Menfis': 4,
      'Pergaminos de Alejandría': 5,
      'Carnes del Desierto': 6,
      'Tesoros del Mar Rojo': 7,
      'Dulces de la Reina': 8,
      'Refrescos del Oasis': 9,
      'Zumos del Nilo': 10,
      'Batidos del Palacio': 11,
      'Smoothies Sagrados': 12,
      'Limonadas de Alejandría': 13,
      'Cafés de Menfis': 14,
      'Infusiones del Templo': 15,
      'Cócteles de los Dioses': 16,
      'Shishas del Imperio': 21,
    };

    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              'assets/images/backgrounds/menu.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.25),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),

                child: Column(
                  children: [

                    Image.asset(
                      'assets/images/logo/logo.png',
                      width: 220,
                    ),

                    const SizedBox(height: 20),

                    ...categorias.entries.map((categoria) {

                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),

                        child: GestureDetector(

                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CategoriaPage(
                                  idCategoria: categoria.value,
                                  nombreCategoria: categoria.key,
                                ),
                              ),
                            );
                          },

                          child: Container(

                            height: 58,

                            decoration: BoxDecoration(
                              color: Colors.black.withValues(
                                alpha: 0.55,
                              ),

                              borderRadius:
                                  BorderRadius.circular(14),

                              border: Border.all(
                                color: const Color(
                                  0xFFD4AF37,
                                ),
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
                                      categoria.key,

                                      style:
                                          const TextStyle(
                                        color:
                                            Color(
                                          0xFFD4AF37,
                                        ),
                                        fontSize: 16,
                                        fontWeight:
                                            FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  const Icon(
                                    Icons.chevron_right,
                                    color:
                                        Color(
                                      0xFFD4AF37,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),

                    const SizedBox(height: 120),
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