import 'package:flutter/material.dart';

class MyAddMovie extends StatelessWidget {
  const MyAddMovie({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      
      children: [
        SizedBox(
          width: 300,  // Set width
          height: 50,  // Set height
          
          child: TextField(
            decoration: InputDecoration(
              hintText: "Titulo",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1.0, 
                  style: BorderStyle.solid,
                  
                  )
                )
            ),
          )
        ),

        const SizedBox(height: 10),
        SizedBox(
          width: 300,  // Set width
          height: 50,  // Set height
          child: TextField(
            decoration: InputDecoration(
              hintText: "Genero",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1.0, style: BorderStyle.solid
                )
              )
            ),
          )
        ),

        const SizedBox(height: 10),
        SizedBox(
          width: 300,  // Set width
          height: 50,  // Set height
          child: TextField(
            decoration: InputDecoration(
              hintText: "Director",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1.0, style: BorderStyle.solid
                )
              )
            ),
          )
        ),

        const SizedBox(height: 10),
        SizedBox(
          width: 300,  // Set width
          height: 50,  // Set height
          child: TextField(
            decoration: InputDecoration(
              hintText: "Sinopsis",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1.0, style: BorderStyle.solid
                )
              )
            ),
          )
        ),

        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              child: Text("Añadir Pelicula"),
            ),
          ],
        )

              
      ],
    )
    );
  }

  void onButtonPressed() {}
}

