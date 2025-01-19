import 'package:ejemplo_scaffold/provider/movieInfo_provider.dart';
import 'package:ejemplo_scaffold/screens/page1.dart';
import 'package:ejemplo_scaffold/screens/page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieInfoProvider(),
      child: const MainApp(),
    )
  );
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
    final List<String> tabs = ["Catálogo", "Añadir"];
    String name = "Catálogo";
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(name),
          backgroundColor: Colors.red,
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index){
            setState(() {
              currentPageIndex = index;
              name = tabs[currentPageIndex];
            });

          },
          selectedIndex: currentPageIndex,
          backgroundColor: Colors.red,
          destinations: 
          const [
            NavigationDestination(icon: Icon(Icons.home), label: "Catalogo"),
            NavigationDestination(icon: Icon(Icons.add), label: "Añadir"),
          ]
          ),
        body: [const Page1(),Page2()][currentPageIndex]
      );
    }
  }
