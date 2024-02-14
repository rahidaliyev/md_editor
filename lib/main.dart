import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamburger Menu Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markdown Editor'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Import file'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Share file'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Help'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonBar(
              children: <Widget>[
                TextButton.icon(onPressed: () {}, icon: const Icon(Icons.preview_sharp),label: const Text("Preview"),),
              ],
            ),
            ButtonBar(
              children: <Widget>[
                TextButton.icon(onPressed: () {}, icon: const Icon(Icons.share),label: const Text("Share"),),
              ],
            ),
          ]
      ),
    );
  }
}