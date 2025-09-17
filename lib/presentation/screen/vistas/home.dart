import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Aplicacion Personal v1.0", style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(
            onPressed: () {
              exit(0);
            },
            icon: Icon(FontAwesomeIcons.doorClosed),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Nombre: Juan Perez"),
                Text("Edad: 30"),
                Text("Profesión: Desarrollador Flutter"),
                Text(
                  "Descripción: Apasionado por la tecnología y el desarrollo de aplicaciones móviles.",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(onPressed: () {}, child: Icon(FontAwesomeIcons.github)),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.linkedin),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.twitter),
          ),
        ],
      ),
    );
  }
}
