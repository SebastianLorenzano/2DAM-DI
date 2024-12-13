import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Placeholder()
            ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "La Naranja Mecanica",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent
                      ),
                    ),
                    Text(
                      "Ciencia Ficción - 1971",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                    )
                  ],
                ),
              ),
            )
            )
        ],
      ),
    );
  }
}