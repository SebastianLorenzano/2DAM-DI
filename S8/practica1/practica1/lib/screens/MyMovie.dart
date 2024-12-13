import 'package:flutter/material.dart';

class MyMovie extends StatelessWidget {
  const MyMovie
({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            alignment: Alignment.center,
            child: Text(
              "Pelicula",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent
                ),
            ),
          ),

          Container(
            width: double.infinity,
            height: 300,
            child: Placeholder()
          ),

          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  
                  "La Naranja Mecánica",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent
                    ),
                  ),
                
                Text(
                  "Aventura - 2023",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                
                Text(
                  "Sinopsis",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                
                Text(
                  "Alex es un joven muy agresivo que tiene dos pasiones: " +
                  "la violencia desaforada y Beethoven. Es el jefe de la banda " +
                  "de los drugos, que dan rienda suelta a sus instintos mas " +
                  "salvajes aterrorizando a la población",
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 70, 69, 69),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 1200,
              child: ElevatedButton(
                
                child: Text("Ver Reparto"),
                onPressed: onButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                  foregroundColor: Colors.white, // Text color
                ),
              ),
            ),
          ),





      ],
    );
  }
  void onButtonPressed() {}
}