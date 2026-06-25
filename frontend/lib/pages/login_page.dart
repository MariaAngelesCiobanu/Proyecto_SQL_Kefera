
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() =>
      _LoginPageState();
}

class _LoginPageState
    extends State<LoginPage> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(

        children: [

          Positioned.fill(
            child: Image.asset(
              "assets/images/backgrounds/home.png",
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(
                alpha: 0.55,
              ),
            ),
          ),

          Center(

            child: SingleChildScrollView(

              padding:
                  const EdgeInsets.all(24),

              child: Card(

                color: Colors.black87,

                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                    20,
                  ),
                ),

                child: Padding(

                  padding:
                      const EdgeInsets.all(24),

                  child: Column(

                    mainAxisSize:
                        MainAxisSize.min,

                    children: [

                      Image.asset(
                        "assets/images/logo/logo.png",
                        width: 170,
                      ),

                      const SizedBox(
                        height: 25,
                      ),

                      TextField(

                        controller:
                            emailController,

                        style: const TextStyle(
                          color: Colors.white,
                        ),

                        decoration:
                            const InputDecoration(

                          labelText:
                              "Correo",

                          labelStyle:
                              TextStyle(
                            color:
                                Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      TextField(

                        controller:
                            passwordController,

                        obscureText: true,

                        style: const TextStyle(
                          color: Colors.white,
                        ),

                        decoration:
                            const InputDecoration(

                          labelText:
                              "Contraseña",

                          labelStyle:
                              TextStyle(
                            color:
                                Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 35,
                      ),

                      SizedBox(

                        width:
                            double.infinity,

                        height: 55,

                        child:
                            ElevatedButton(

                          onPressed: () {},

                          child: const Text(
                            "INICIAR SESIÓN",
                          ),
                        ),
                      ),

                      TextButton(

                        onPressed: () {

                          Navigator.pushNamed(
                            context,
                            "/register",
                          );
                        },

                        child: const Text(
                          "Crear cuenta",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}