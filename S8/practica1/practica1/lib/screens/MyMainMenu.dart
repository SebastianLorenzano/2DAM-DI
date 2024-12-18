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
        child: Text(
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
            borderSide: BorderSide(
              width: 1.0,
              style: BorderStyle.solid,
            )
          )
        ),
      ),
      SizedBox(height: 5,),
      Row(  
        children: [
          ElevatedButton(
            onPressed: (){},
            child: Text("Acción"),
            ),
          SizedBox(width: 5,),
          ElevatedButton(
            onPressed: (){},
            child: Text("Aventuras"),
            ),
          SizedBox(width: 5,),
          ElevatedButton(
            onPressed: (){},
            child: Text("Terror"),
            )
        ]
      ),
      SizedBox(height: 5,),
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
                child: Text(
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
                children: [
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