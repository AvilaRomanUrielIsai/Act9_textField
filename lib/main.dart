import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: Color(0xff1d19f8))),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Blockbuster'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          title,
          style: const TextStyle(color: Colors.yellow),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/logo4.png',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu usuario",
                labelText: "Iniciar Sesión",
                suffixIcon: Icon(Icons.people, color: Color(0xff877c21)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu contraseña",
                labelText: "Contraseña",
                suffixIcon: Icon(Icons.password, color: Color(0xff877c21)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Confirma tu contraseña",
                labelText: "Confirmar",
                suffixIcon:
                    Icon(Icons.password_sharp, color: Color(0xff877c21)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu correo",
                labelText: "Correo",
                suffixIcon: Icon(Icons.email, color: Color(0xff877c21)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu dirección",
                labelText: "Dirección",
                suffixIcon: Icon(Icons.directions, color: Color(0xff877c21)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Método de pago",
                  labelText: "Suscripción",
                  suffixIcon:
                      Icon(Icons.card_membership, color: Color(0xff877c21))),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Ingresa tu país",
                labelText: "Nación",
                suffixIcon: Icon(Icons.flag, color: Color(0xff877c21)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
