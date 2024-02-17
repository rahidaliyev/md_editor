import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:md_editor/help.dart';
import 'package:share_plus/share_plus.dart';
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
  String _markdownData = "";
  String path = "";

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
              onTap: () async {
                getMarkDownData();
              },
            ),
            ListTile(
              title: const Text('Share file'),
              onTap: () {
                shareFile(path);
              },
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

  Future<void> getMarkDownData() async {
    final res = await FilePicker.platform.pickFiles();
    if (res == null){
      return;
    }
    else {
      if (res.files.first.extension == "md") {
        final filePath = res.files.first.path;
        if (filePath != null) {
          final file = File(filePath);
          String markdownContent = await file.readAsString();
          setState(() {
            _markdownData = markdownContent;
            path = filePath;
          });
        }
      } else {
        print("You can only choose md!!!");
      }
    }
  }

  void shareFile(String filePath) async {
    filePath = path;
    if (await File(filePath).exists()) {
      await Share.shareXFiles([XFile(filePath)]);
    } else {
      print('File not found!!!');
    }
  }
}
