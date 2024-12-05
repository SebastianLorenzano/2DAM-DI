import "package:flutter/material.dart";

class MyTestScreen extends StatelessWidget {
  const MyTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Flutter layout demo"),
        Spacer(),
        Placeholder(
          fallbackHeight: 200,
          fallbackWidth: 60,
        ),
        Spacer(),
        Text("Title of demo", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
        Spacer(),
        Text("Subtitle of demo", style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Icon 1", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            Text("Icon 2" , style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            Text("Icon 3", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
        Spacer(),
        Text("Description of demo.Description of demo.Description of demo.Description of demo.\n" +
            "Description of demo.Description of demo.Description of demo.Description of demo.\n" +
            "Description of demo.Description of demo.Description of demo.Description of demo.\n" +
            "Description of demo.Description of demo.Description of demo.Description of demo.",
            style: TextStyle(
              fontSize: 11,
            ),
        ),
      ],
    );
  }
}
