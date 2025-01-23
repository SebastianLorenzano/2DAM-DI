import 'package:ejemplo_scaffold/components/pelicula.dart';
import 'package:ejemplo_scaffold/provider/movieInfo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    var gastos = context.watch<MovieInfoProvider>();
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
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: gastos.movies.length,
          itemBuilder: (BuildContext context, int index) {
            return Pelicula(g: gastos.movies[index]);
          }
        ),
      ),
      ]
    );
  }
}