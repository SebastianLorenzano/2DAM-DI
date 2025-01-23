import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/home.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Bienvenido a BestMovies101",
          body: "Aquí podras ver las mejores películas de la historia",
          image: buildImage('assets/onboarding1.png'),
          decoration: PageDecoration(
            pageColor: Colors.grey[100],
          )
        ),
        PageViewModel(
          title: "Título 2",
          body: "Body 2"
        ),
                PageViewModel(
          title: "Título 2",
          body: "Body 2"
        ),
                PageViewModel(
          title: "Título 2",
          body: "Body 2"
        )

      ],
    done: Text("Done"),
    onDone: (){
      goToHome(context);
    },
    next: Icon(Icons.arrow_forward),
    showSkipButton: true,
    skip: Text("Skip"),
    dotsDecorator: DotsDecorator(
        activeColor: Colors.orange,
        activeSize: Size(22,22),
    ),

    );
  }

  Widget buildImage(String path) {
    return Center(
      child: Image.asset(path, width: 350),
    );
  }
}

void goToHome(context){
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => Home())
  );
}