import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0.2,
        title: Text("Daniel Villar", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 162, 218, 255),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: const Color.fromARGB(255, 0, 0, 0),
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromRGBO(123, 202, 255, 1)),
              accountName: Text("Daniel Villar"),
              accountEmail: Text("a.22308051281330@cbtis128.edu.mx"),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                radius: 120,
            child: ClipOval(
              child: Image.network(
                'https://raw.githubusercontent.com/Daniel-Villar/Imagenes-para-APP-flutter/refs/heads/main/pp.png',
              ),
            ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}