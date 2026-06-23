import 'package:flutter/material.dart';

class HamburguesasPage extends StatelessWidget {
  const HamburguesasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // FONDO
          Positioned.fill(
            child: Image.asset(
              'assets/images/backgrounds/menu.png',
              fit: BoxFit.cover,
            ),
          ),

          // CAPA OSCURA
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.55),
            ),
          ),

          SafeArea(
            child: Column(
              children: [

                // CABECERA
                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFFD4AF37),
                        ),
                      ),

                      const Expanded(
                        child: Text(
                          'HAMBURGUESAS DE LOS FARAONES',

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 40),
                    ],
                  ),
                ),

                // GRID
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(20),

                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,

                    children: const [


                    BurgerCard(
                      name: 'El Guardián',
                      image:
                          'assets/images/products/burgers/el_guardian.png',
                    ),

                    BurgerCard(
                      name: 'Halcón Dorado',
                      image:
                          'assets/images/products/burgers/halcon_dorado.png',
                    ),

                    BurgerCard(
                      name: 'Sol Eterno',
                      image:
                          'assets/images/products/burgers/sol_eterno.png',
                    ),

                    BurgerCard(
                      name: 'Arena Real',
                      image:
                          'assets/images/products/burgers/arena_real.png',
                    ),

                    BurgerCard(
                      name: 'Trono del Nilo',
                      image:
                          'assets/images/products/burgers/trono_nilo.png',
                    ),

                    BurgerCard(
                      name: 'Escarabajo Negro',
                      image:
                          'assets/images/products/burgers/escarabajo_negro.png',
                    ),
                  ],
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

class BurgerCard extends StatelessWidget {
  final String name;
  final String image;

  const BurgerCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(name);
      },

      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.55),

          borderRadius: BorderRadius.circular(16),

          border: Border.all(
            color: const Color(0xFFD4AF37),
          ),
        ),

        child: Column(
          children: [

            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),

                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),

              child: Text(
                name,

                textAlign: TextAlign.center,

                style: const TextStyle(
                  color: Color(0xFFD4AF37),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
