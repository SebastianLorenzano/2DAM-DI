import 'package:ejemplo_scaffold/models/movieInfo.dart';
import 'package:ejemplo_scaffold/provider/movieInfo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pelicula extends StatelessWidget {
  final MovieInfo g;
  const Pelicula({super.key, required this.g});

  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieInfoProvider>();
      return Container(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                )
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(g.image), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 120,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      g.movieName,
                      style: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text(
                      g.movieGenre + " - " + g.movieYear.toString(),
                      style: TextStyle(
                        fontSize: 7,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}