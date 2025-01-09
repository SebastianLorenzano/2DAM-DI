import 'package:flutter/material.dart';
import 'package:practica1/components/MyCard.dart';

class MyMainMenu extends StatelessWidget {
  const MyMainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    
    children: [
      Container(
        height: 100,
        alignment: Alignment.center,
        child: const Text(
          "Catalogo",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent
            ),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          hintText: "Buscar pelicula...",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1.0,
              style: BorderStyle.solid,
            )
          )
        ),
      ),
      const SizedBox(height: 5,),
      Row(  
        children: [
          ElevatedButton(
            onPressed: (){},
            child: const Text("Acción"),
            ),
          const SizedBox(width: 5,),
          ElevatedButton(
            onPressed: (){},
            child: const Text("Aventuras"),
            ),
          const SizedBox(width: 5,),
          ElevatedButton(
            onPressed: (){},
            child: const Text("Terror"),
            )
        ]
      ),
      const SizedBox(height: 5,),
      Expanded(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
          MySection(),
          MySection(),
          MySection(),
          ],
        )
      )
    ],
    );
  }

  Column MySection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Text(
                  "Ciencia Ficción",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent
                  ),
                )
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MyCard(),
                  SizedBox(width: 20,),
                  MyCard(),
                  SizedBox(width: 20,),
                  MyCard(),
                  SizedBox(width: 20,),
                  MyCard(),
                ],
              ),
            )
          ],
        );
  }

}