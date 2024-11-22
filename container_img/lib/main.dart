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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //     title: Text(
      //      "Demo Container",
      //      style: TextStyle(color: Colors.white, fontSize: 40),
      //    ),
      //    backgroundColor: Colors.transparent,
      //foregroundColor: Colors.white,
      //   centerTitle: true,
      // ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          alignment: Alignment.center,
          //color: Colors.blue,
          decoration: BoxDecoration(
            color: Colors.green,
            //borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1577259855408-c14a7b107540?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                )),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlue,
                  Colors.blue,
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://plus.unsplash.com/premium_photo-1691411181835-f4f08c97e0a2?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                radius: 100,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 150),
                child: Text(
                  "App Sel ",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NouvellePage(),
                  ));
                },
                child: Container(
                  height: 50,
                  width: 700,
                  //color: Colors.green,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Text(
                    "Se connecter",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                margin: EdgeInsets.symmetric(vertical: 10),
                //color: Colors.green,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Text(
                  "S'enregistrer",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NouvellePage extends StatelessWidget {
  const NouvellePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nouvelle page"),
      ),
    );
  }
}
