import 'package:flutter/material.dart';
import 'package:practica1/models/MovieInfo.dart';
import 'package:practica1/provider/movies_provider.dart';
import 'package:provider/provider.dart';


class Movie extends StatelessWidget {
  final MovieInfo m;
  const Movie({super.key, required this.m});

  @override
  Widget build(BuildContext context) {
    var gastos = context.watch<MoviesProvider>();
    return Row(
            children: [
            Text(m.nombre),
            SizedBox(width: 10,),
            Text(m.coste.toString()),
            SizedBox(width: 10,),
            IconButton(onPressed: (){
                gastos.deleteGasto2(m);
            }, icon: Icon(Icons.delete))
            ]
          );
  }
}