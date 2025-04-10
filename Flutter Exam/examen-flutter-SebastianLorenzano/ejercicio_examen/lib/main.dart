import 'package:ejercicio_examen/ejercicio1/EjercicioDosScreen.dart';
import 'package:ejercicio_examen/ejercicio2/provider/FacturaProvider.dart';
import 'package:ejercicio_examen/ejercicio2/screens/FormScreen.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio_examen/ejercicio2/screens/MainScreen.dart';
import 'package:provider/provider.dart';


void main2() {
  
}
void main() { 
  // Ejercicio 1
  runApp( const MiEjercicioDos()); 

  // Ejercicio 2
  /*
    runApp(
    ChangeNotifierProvider(
      create: (context) => FacturaProvider(),
      child: MainApp(),
    ),
  );
  */
}

class MiEjercicioDos extends StatelessWidget {
  const MiEjercicioDos({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EjercicioDosScreen(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavBar()
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  final pageTitles = ['Home', 'Formulario'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(pageTitles[currentPageIndex]),
        backgroundColor: Colors.grey[300],
      ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
            currentPageIndex = index;
            
            setState(() {});
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home',),
          NavigationDestination(icon: Icon(Icons.add), label: 'Añadir')
          ]
        
      
        ),
        body: [MainScreen(), FormScreen()][currentPageIndex],
    );
  }
}