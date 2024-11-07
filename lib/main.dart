import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO7c4RvTU0LLIzA_iP9kMAO4sdnywG74iRtQ&s'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Etiqueta(),
        CampoUser(),
        CampoPass(),
        BotonEntrar(),
      ],
      ),
    );
  }
}

Widget Etiqueta (){
  return Container(child: Center(child: Text("Sign in", style: TextStyle(fontSize: 25.0, color: Colors.black),),),);
}

Widget CampoUser(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: TextField(decoration: InputDecoration(hintText: "user", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget CampoPass(){
  return Container(
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget BotonEntrar(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: ElevatedButton( 
      onPressed: () {},
      child: Text("Enter Now", style: TextStyle(fontSize: 23.0, color: Colors.red),)
    ),
  );
}