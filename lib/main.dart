import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:md_editor/help.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(),
      },
      title: 'MD_Editor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _markdownData = """

# Monday

### Chest & Arms

* [Bench press 4x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Inchline bench dumbell fly 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Bench dumbell fly 3x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Chest cable fly 4x10](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Seated dumbell curl 4x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Z-Bar curl 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Super Set](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Triceps kickbacks](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Bench Dips](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Over head Triceps extensions](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)

# Monday

### Chest & Arms

* [Bench press 4x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Inchline bench dumbell fly 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Bench dumbell fly 3x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Chest cable fly 4x10](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Seated dumbell curl 4x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Z-Bar curl 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Super Set](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Triceps kickbacks](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Bench Dips](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Over head Triceps extensions](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)

# Monday

### Chest & Arms

* [Bench press 4x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Inchline bench dumbell fly 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Bench dumbell fly 3x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Chest cable fly 4x10](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Seated dumbell curl 4x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Z-Bar curl 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Super Set](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Triceps kickbacks](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Bench Dips](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Over head Triceps extensions](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)

# Monday

### Chest & Arms

* [Bench press 4x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Inchline bench dumbell fly 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Bench dumbell fly 3x12](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Chest cable fly 4x10](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Seated dumbell curl 4x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Z-Bar curl 3x15](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Super Set](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Triceps kickbacks](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
  * [Bench Dips](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)
* [Over head Triceps extensions](https://youtu.be/XePkXDMfLaY?si=9FY3FnVdZ6wpaw8e)

 """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markdown Editor'),
      ),
      body: Column(children: [
        Expanded(
            child: SafeArea(
                child: Markdown(
                    data: _markdownData,
                    onTapLink: (text, url, title) {
                      launch(url!);
                    }))),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ButtonBar(
            children: <Widget>[
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.preview_sharp),
                label: const Text("Preview"),
              ),
            ],
          ),
          ButtonBar(
            children: <Widget>[
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share),
                label: const Text("Share"),
              ),
            ],
          ),
        ]),
      ]),
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
              onTap: () {},
            ),
            ListTile(
              title: const Text('Share file'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HelpPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
