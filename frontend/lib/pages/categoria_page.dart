// REEMPLAZA EL CONTENIDO DE categoria_page.dart POR ESTA VERSIÓN BASE
// (Versión resumida por límite de generación)

import 'package:flutter/material.dart';
import '../models/carrito.dart';
import '../services/api_service.dart';
import 'burger_detail_page.dart';
import 'carrito_page.dart';

class CategoriaPage extends StatefulWidget {
  final int idCategoria;
  final String nombreCategoria;

  const CategoriaPage({
    super.key,
    required this.idCategoria,
    required this.nombreCategoria,
  });

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  final ApiService apiService = ApiService();
  late Future<List<dynamic>> productosFuture;

  @override
  void initState() {
    super.initState();
    productosFuture =
        apiService.obtenerProductosPorCategoria(widget.idCategoria);
  }

  
  String obtenerImagen(String nombre) {

  switch (nombre.toLowerCase()) {

    case "bestia del nilo":
      return "assets/images/products/burgers/bestia_del_nilo.jpg";

    case "faraón supremo":
      return "assets/images/products/burgers/faraon_supremo.jpg";

    case "guardián de anubis":
      return "assets/images/products/burgers/guardian_anubis.jpg";

    case "ojo de horus":
      return "assets/images/products/burgers/ojo_horus.jpg";

    case "reina cleopatra":
      return "assets/images/products/burgers/reina_cleopatra.jpg";

    case "trono de ra":
      return "assets/images/products/burgers/trono_ra.jpg";

    default:
      return "assets/images/logo/logo.png";
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nombreCategoria),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(_)=>const CarritoPage()));
            },
          )
        ],
      ),
      body: FutureBuilder<List<dynamic>>(
        future: productosFuture,
        builder:(context,snapshot){
          if(!snapshot.hasData){
            return const Center(child:CircularProgressIndicator());
          }
          final productos=snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: productos.length,
            itemBuilder:(context,index){
              final p=productos[index];
              return Card(
                child: Column(
                  children:[
                    ListTile(
                      title: Text(p["nombre"]??""),
                      subtitle: Text("${p["precio"]} €"),
                    ),
                    ElevatedButton(
                      onPressed:(){
                        Carrito.agregar(p);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Producto añadido"))
                        );
                      },
                      child: const Text("AÑADIR AL CARRITO"),
                    ),
                    if(widget.idCategoria==3)
                      TextButton(
                        onPressed:(){
                          Navigator.push(context,
                            MaterialPageRoute(builder:(_)=>BurgerDetailPage(idProducto:p["idProducto"])));
                        },
                        child: const Text("VER DETALLE"),
                      )
                  ],
                ),
              );
            }
          );
        }
      )
    );
  }
}
