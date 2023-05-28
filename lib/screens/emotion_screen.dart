import 'package:flutter/material.dart';
import 'firebase_service.dart';
import 'animal_list.dart';
import 'emotion.dart';

class EmotionScreen extends StatefulWidget {
  const EmotionScreen({super.key});

  @override
  _EmotionScreenState createState() => _EmotionScreenState();
}

class _EmotionScreenState extends State<EmotionScreen> {
  final firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose Emotion')),
      body: ListView.builder(
        itemCount: FirebaseService.emotions.length,
        itemBuilder: (BuildContext context, int index) {
          Emotion emotion = FirebaseService.emotions[index];
          return Card(
            child: ListTile(
              title: Text(emotion.name),
              onTap: () {
                // Navigate to AnimalList screen filtered by emotion
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimalList(emotionId: emotion.id)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
