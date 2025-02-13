import 'package:ejercicio_examen/ejercicio2/provider/FacturaProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});

TextEditingController nombreController = TextEditingController();
TextEditingController descripcionController = TextEditingController();
TextEditingController importeController = TextEditingController();
FocusNode nombreFocus = FocusNode();
FocusNode descripcionFocus = FocusNode();
FocusNode importeFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    var facturas = context.watch<FacturaProvider>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            TextField(
              
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder()
              ),
              controller: nombreController,
              focusNode: nombreFocus,
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Descripción',
                border: OutlineInputBorder()),
              controller: descripcionController,
              focusNode: descripcionFocus,
              
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Importe',
                border: OutlineInputBorder()
              ),
              controller: importeController,
              focusNode: importeFocus,
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () {
                facturas.addFactura(
                  nombreController.text,
                  descripcionController.text,
                  int.parse(importeController.text),
                );
                nombreController.clear();
                descripcionController.clear();
                importeController.clear();
                nombreFocus.unfocus();
                descripcionFocus.unfocus();
                importeFocus.unfocus();
              },
              child: Text('Añadir'),
            ),
          ],
        ),
      ),
    );
  }
}