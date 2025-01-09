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
            child: const Text(
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
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          const Padding(
            padding: EdgeInsets.all(30.0),
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
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Sinopsis",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                
                Text(
                  "Alex es un joven muy agresivo que tiene dos pasiones: la violencia desaforada y Beethoven. Es el jefe de la banda de los drugos, que dan rienda suelta a sus instintos mas salvajes aterrorizando a la población",
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Director",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Stanley Kubrick",
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: SizedBox(
              width: 1200,
              child: ElevatedButton(
                
                onPressed: onButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                  foregroundColor: Colors.white, // Text color
                ),
                
                child: Text("Ver Reparto"),
              ),
            ),
          ),





      ],
    );
  }
  void onButtonPressed() {}
}