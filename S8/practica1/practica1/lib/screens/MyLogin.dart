import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});
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
              hintText: "Usuario",
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
              hintText: "Contraseña",
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
              child: Text("Iniciar Sesión"),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color
                foregroundColor: Colors.green, // Text color
              ),
              child: Text("Registrarse"),
            
            )
          ],
        )

              
      ],
    )
    );
  }

  void onButtonPressed() {}
}

