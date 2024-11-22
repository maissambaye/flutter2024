import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MaPageAccueil(),
    );
  }
}

class MaPageAccueil extends StatelessWidget {
  const MaPageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.person_2_outlined,
              size: 100,
              color: Colors.green,
            ),
            TextField(
              //inp: TextInputType.emailAddress,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Email",
                icon: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Mot de passe",
                icon: Icon(
                  Icons.password,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Connexion",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScaffoldBis extends StatelessWidget {
  const ScaffoldBis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Hello Fenetre"),
        // leading: const Icon(Icons.arrow_back_ios),
        // actions: const [
        //   Icon(Icons.add),
        //   Icon(Icons.camera),
        //   Icon(Icons.close),
        // ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              child: const Text(
                "Menu principal",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Menu 1"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Menu 1"),
              trailing: Icon(Icons.check_box_outline_blank),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Menu 1"),
            ),
            Divider()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(144, 202, 249, 1),
        selectedItemColor: Colors.white,
        selectedFontSize: 17,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Accueil",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Recherche",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Recherche",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
