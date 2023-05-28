import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class LocalStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> _localFile(String filename) async {
    final path = await _localPath;
    return File('$path/$filename');
  }

  Future<File> writeFile(String filename, String content) async {
    final file = await _localFile(filename);
    return file.writeAsString(content);
  }

  Future<String> readFile(String filename) async {
    try {
      final file = await _localFile(filename);
      String contents = await file.readAsString();
      return contents;
    } catch (e) {
      return '';
    }
  }

  Future<File> writeJson(String filename, Map<String, dynamic> json) async {
    String jsonString = jsonEncode(json);
    return writeFile(filename, jsonString);
  }

  Future<Map<String, dynamic>> readJson(String filename) async {
    String jsonString = await readFile(filename);
    if (jsonString.isNotEmpty) {
      return jsonDecode(jsonString);
    } else {
      return {};
    }
  }
}
