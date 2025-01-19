import 'package:practica1/models/MovieInfo.dart';
import 'package:flutter/material.dart';

class MoviesProvider with ChangeNotifier{

  List<MovieInfo> _movies = [
    MovieInfo("Teclados", 20),
    MovieInfo("Ordenador", 30)
  ];

  List<MovieInfo> get movies => _movies;

  void addGasto(String nombre, int coste){
    _movies.add(MovieInfo(nombre,coste));
    notifyListeners();
  }

  void deleteGasto(index){
    _movies.removeAt(index);
    notifyListeners();
  }

  void deleteGasto2(MovieInfo movie){
    _movies.remove(movie);
    notifyListeners();
  }
}