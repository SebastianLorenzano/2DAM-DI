import 'package:ejercicio_examen/ejercicio2/models/Factura.dart';
import 'package:flutter/material.dart';

class FacturaProvider extends ChangeNotifier{
  List<Factura> facturas = [
    Factura('Factura 1', 'Descripcion 1', 100),
    Factura('Factura 2', 'Descripcion 2', 200),
    Factura('Factura 3', 'Descripcion 3', 300),
        Factura('Factura 1', 'Descripcion 1', 100),
    Factura('Factura 2', 'Descripcion 2', 200),
    Factura('Factura 3', 'Descripcion 3', 300),
        Factura('Factura 1', 'Descripcion 1', 100),
    Factura('Factura 2', 'Descripcion 2', 200),
    Factura('Factura 3', 'Descripcion 3', 300),
        Factura('Factura 1', 'Descripcion 1', 100),
    Factura('Factura 2', 'Descripcion 2', 200),
    Factura('Factura 3', 'Descripcion 3', 300),
        Factura('Factura 1', 'Descripcion 1', 100),
    Factura('Factura 2', 'Descripcion 2', 200),
    Factura('Factura 3', 'Descripcion 3', 300),
  ];

  List<Factura> get getFacturas => facturas;

  void addFactura(String nombre, String descripcion, int importe) {
    facturas.add(Factura(nombre, descripcion, importe));
    notifyListeners();
  }

  void removeFactura(Factura factura) {
    facturas.remove(factura);
    notifyListeners();
  }
}