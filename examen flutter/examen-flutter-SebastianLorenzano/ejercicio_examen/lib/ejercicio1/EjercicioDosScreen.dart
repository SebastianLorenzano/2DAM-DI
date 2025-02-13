import 'package:flutter/material.dart';

class EjercicioDosScreen extends StatelessWidget {
  const EjercicioDosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/volcanes.jpg"),
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.home, color: Colors.blue),
                            Icon(Icons.abc, color: Colors.red),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("El Volcan mas Peligroso del mundo", style: TextStyle(
                              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                              Column(
                                children: [
                                  Text("19/01/2024", style: TextStyle(
                                    color: Colors.grey, fontSize: 11)),
                                  Text("Maravillas naturales" , style: TextStyle(
                                    color: Colors.grey, fontSize: 11)),
                                ],
                              )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque neque eros. " +
                          "Quisque aliquam metus in odio pharetra congue. Pellentesque euismod lectus et egestas porttitor. Aliquam molestie id elit sed sollicitudin." +
                          "Integer iaculis a leo quis vehicula. Cras tempus libero ut ipsum pharetra, vel malesuada mauris maximus. Sed tempus lectus libero, at scelerisque" +
                          " nibh facilisis laoreet. Suspendisse et urna dolor. Curabitur tempus eu diam ut tristique. Duis neque dolor, semper eu ante vitae, rutrum condimentum ligula. " + 
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam scelerisque neque eros. " +
                          "Quisque aliquam metus in odio pharetra congue. Pellentesque euismod lectus et egestas porttitor. Aliquam molestie id elit sed sollicitudin." +
                          "Integer iaculis a leo quis vehicula. Cras tempus libero ut ipsum pharetra, vel malesuada mauris maximus. Sed tempus lectus libero, at scelerisque" +
                          " nibh facilisis laoreet. Suspendisse et urna dolor. Curabitur tempus eu diam ut tristique. Duis neque dolor, semper eu ante vitae, rutrum condimentum ligula. " + 
                          "Integer luctus et leo in efficitur. Vivamus suscipit justo vel nibh cursus euismod. Sed sodales malesuada justo vitae fermentum.",
                          style: TextStyle(color: Colors.black, fontSize: 11),
                          textAlign: TextAlign.justify,
                          ),  
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}