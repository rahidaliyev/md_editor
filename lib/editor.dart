import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _clearText() {
    _textEditingController.clear();
  }

  Future<void> _saveAsMarkdown(String content) async {
    final directory = await getExternalStorageDirectory();
    print(directory.toString());
    final file = File('${directory!.path}/my_file.md');
    await file.writeAsString(content);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Input text",
              ),
              maxLines: null,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _clearText,
                  child: const Text("Clear"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _saveAsMarkdown(_textEditingController.text);
                  },
                  child: const Text("Save"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
