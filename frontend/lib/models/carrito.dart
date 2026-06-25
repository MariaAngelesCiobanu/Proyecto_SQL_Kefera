class Carrito {

  static final List<Map<String, dynamic>>
      productos = [];

  static void agregar(
      Map<String, dynamic> producto) {

    productos.add(producto);
  }

  static void eliminar(
      Map<String, dynamic> producto) {

    productos.remove(producto);
  }

  static double total() {

    double total = 0;

    for (var producto in productos) {

      total +=
          (producto["precio"] as num)
              .toDouble();
    }

    return total;
  }
}