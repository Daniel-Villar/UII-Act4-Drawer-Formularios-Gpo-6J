import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Daniel Villar"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 70, 107, 131),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {},
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 76, 93, 112),
              ),
              accountName: Text("Daniel Villar"),
              accountEmail: Text("a.22308051281330@cbtis128.edu.mx"),

              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  radius: 130,
                  backgroundColor: const Color.fromARGB(255, 86, 88, 97),
                  child: CircleAvatar(
                    radius: 120,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/Daniel-Villar/Imagenes-para-APP-flutter/refs/heads/main/pp.png',
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/home");
                },
                leading: Icon(
                  Icons.home,
                  color: const Color.fromARGB(255, 51, 51, 51),
                ),
                title: Text("Pagina inicial"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
