import 'package:ejemplo_scaffold/provider/movieInfo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  final movieName = TextEditingController();
  final movieGenre = TextEditingController();
  final movieYear = TextEditingController();
  final movieImage = TextEditingController();
  final movieNameFocus = FocusNode();
  final movieGenreFocus = FocusNode();
  final movieYearFocus = FocusNode();
    final movieImageFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieInfoProvider>();
    return Center(
      child: Column(
        children: [
          TextField(
            controller: movieName,
            focusNode: movieNameFocus,
          ),
          TextField(
            controller: movieGenre,
            focusNode: movieGenreFocus,
          ),
          TextField(
            controller: movieYear,
            focusNode: movieYearFocus,
          ),
          TextField(
            controller: movieImage,
            focusNode: movieImageFocus,
          ),
          FloatingActionButton(
            onPressed: () {
              try {
                int year = int.parse(movieYear.text);
                movies.addMovie(movieName.text, movieGenre.text, year, movieImage.text);
              } catch (e) {
                print('Error parsing year: $e');
              }
            },
            child: Text("Añadir"),
          ),
        ],
      ),
    );
  }
}

