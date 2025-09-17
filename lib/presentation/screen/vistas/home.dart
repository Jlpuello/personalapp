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
        title: Row(
          children: [
            Icon(FontAwesomeIcons.user),
            SizedBox(width: 10),
            Text("PersonalAPP", style: TextStyle(fontSize: 20)),
          ],
        ),
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
          children: [
            SizedBox(height: 20),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 150, maxHeight: 150),
              child: Image(
                image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Column(
                children: [
                  Text("Nombre: Jorge Leonardo Puello Coneo"),
                  Text("Edad: 31 años"),
                  Text("Profesión: Desarrollador Flutter"),
                  Text("Ingeniero en construccion"),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(FontAwesomeIcons.github),
          ),
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
