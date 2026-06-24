import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

static const String baseUrl =
    'http://192.168.X.X:8080/api';

  Future<List<dynamic>> obtenerProductos() async {

    final response = await http.get(
      Uri.parse('$baseUrl/productos'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw Exception('Error cargando productos');
  }

  Future<dynamic> obtenerDetalleProducto(
      int id) async {

    final response = await http.get(
      Uri.parse('$baseUrl/productos/$id/detalle'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw Exception(
        'Error cargando detalle');
  }

  Future<List<dynamic>> obtenerCategorias() async {

    final response = await http.get(
      Uri.parse('$baseUrl/categorias'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw Exception(
        'Error cargando categorías');
  }

  Future<List<dynamic>> obtenerRecomendaciones(
      int id) async {

    final response = await http.get(
      Uri.parse(
          '$baseUrl/recomendaciones/$id'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw Exception(
        'Error cargando recomendaciones');
  }
}