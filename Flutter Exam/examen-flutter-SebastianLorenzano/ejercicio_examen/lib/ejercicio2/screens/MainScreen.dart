import 'package:ejercicio_examen/ejercicio2/components/Tarjeta.dart';
import 'package:ejercicio_examen/ejercicio2/provider/FacturaProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var facturas = context.watch<FacturaProvider>();
    return Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: facturas.getFacturas.length,
              itemBuilder: (context, index) {
                return Tarjeta(factura: facturas.getFacturas[index]);
              },
            )
          ),
        ],
      );

  }
}