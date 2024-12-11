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
        Container(
          width: 300,  // Set width
          height: 50,  // Set height
          
          child: TextField(
            decoration: InputDecoration(
              hintText: "Usuario",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1.0, 
                  style: BorderStyle.solid,
                  
                  )
                )
            ),
          )
        ),

        SizedBox(height: 10),
        Container(
          width: 300,  // Set width
          height: 50,  // Set height
          child: TextField(
            decoration: InputDecoration(
              hintText: "Contraseña",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  width: 1.0, style: BorderStyle.solid
                )
              )
            ),
          )
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onButtonPressed,
              child: Text("Iniciar Sesión"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
                foregroundColor: Colors.white, // Text color
              ),
            
            ),
                        ElevatedButton(
              onPressed: onButtonPressed,
              child: Text("Registrarse"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color
                foregroundColor: Colors.green, // Text color
              ),
            
            )
          ],
        )

              
      ],
    )
    );
  }

  void onButtonPressed() {

  
}
}

