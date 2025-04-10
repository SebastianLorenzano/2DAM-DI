import 'package:ejercicio_examen/ejercicio2/models/Factura.dart';
import 'package:ejercicio_examen/ejercicio2/provider/FacturaProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tarjeta extends StatelessWidget {
  final Factura factura;

  const Tarjeta({super.key, required this.factura});


  @override
  Widget build(BuildContext context) {
    var facturas = context.watch<FacturaProvider>();
    return Padding(
      padding: const EdgeInsets.only(top: 8.00, left: 8.00, right: 8.00), // padding 8 top dicision propia, se ve mejor
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: const Color.fromARGB(255, 167, 221, 154)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 5),
            Text("Pepe"),
            Text(factura.nombre),
            Text(factura.nombre),
            Text(factura.importe.toString()),
            IconButton(
              color: Colors.red,
              icon: Icon(Icons.delete),
              onPressed: () {
                facturas.removeFactura(factura);
              },
            ),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}