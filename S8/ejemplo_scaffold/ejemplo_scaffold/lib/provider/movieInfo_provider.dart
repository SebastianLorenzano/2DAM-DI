
import 'package:ejemplo_scaffold/models/movieInfo.dart';
import 'package:flutter/material.dart';

class MovieInfoProvider with ChangeNotifier{

  final List<MovieInfo> _movies = [
    MovieInfo("La Naranja Mecanica", "Ciencia Ficción", 1971, "https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2022/06/08/la-naranja-mecanica.jpeg"),
    MovieInfo("El Exorcista", "Terror",  1973, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Jason_Miller_and_Max_von_Sydow_in_The_Exorcist.jpg/1280px-Jason_Miller_and_Max_von_Sydow_in_The_Exorcist.jpg"),
    MovieInfo("La Naranja Mecanica", "Ciencia Ficción", 1971, "https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2022/06/08/la-naranja-mecanica.jpeg"),
    MovieInfo("El Exorcista", "Terror",  1973, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Jason_Miller_and_Max_von_Sydow_in_The_Exorcist.jpg/1280px-Jason_Miller_and_Max_von_Sydow_in_The_Exorcist.jpg"),    MovieInfo("La Naranja Mecanica", "Ciencia Ficción", 1971, "https://imagenes.20minutos.es/files/image_1920_1080/uploads/imagenes/2022/06/08/la-naranja-mecanica.jpeg"),
    MovieInfo("El Exorcista", "Terror",  1973, "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Jason_Miller_and_Max_von_Sydow_in_The_Exorcist.jpg/1280px-Jason_Miller_and_Max_von_Sydow_in_The_Exorcist.jpg"),  ];

  List<MovieInfo> get movies => _movies;

  void addMovie(String movieName, String movieGenre, int movieYear, String image){
    _movies.add(MovieInfo(movieName,movieGenre,movieYear, image));
    notifyListeners();
  }

  void deleteMovie(index){
    _movies.removeAt(index);
    notifyListeners();
  }

  void deleteMovie2(MovieInfo MovieInfo){
    _movies.remove(MovieInfo);
    notifyListeners();
  }
}