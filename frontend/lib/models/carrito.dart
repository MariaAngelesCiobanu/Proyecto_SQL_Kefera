class CarritoItem {
  final Map<String, dynamic> producto;
  int cantidad;

  CarritoItem({
    required this.producto,
    this.cantidad = 1,
  });

  double get subtotal {
    return (producto["precio"] as num).toDouble() * cantidad;
  }
}

class Carrito {
  static final List<CarritoItem> productos = [];

  static void agregar(Map<String, dynamic> producto) {
    for (var item in productos) {
      if (item.producto["idProducto"] == producto["idProducto"]) {
        item.cantidad++;
        return;
      }
    }

    productos.add(
      CarritoItem(
        producto: producto,
      ),
    );
  }

  static void eliminar(CarritoItem item) {
    productos.remove(item);
  }

  static void aumentar(CarritoItem item) {
    item.cantidad++;
  }

  static void disminuir(CarritoItem item) {
    if (item.cantidad > 1) {
      item.cantidad--;
    } else {
      productos.remove(item);
    }
  }

  static double total() {
    double total = 0;

    for (var item in productos) {
      total += item.subtotal;
    }

    return total;
  }

  static void vaciar() {
    productos.clear();
  }
}