import 'package:flutter/material.dart';

class EmotionProvider extends ChangeNotifier {
  String _selectedEmotion = '';

  String get selectedEmotion => _selectedEmotion;

  void updateSelectedEmotion(String emotion) {
    _selectedEmotion = emotion;
    notifyListeners();
  }
}
