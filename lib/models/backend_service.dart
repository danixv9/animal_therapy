import 'animal.dart';
import 'emotion.dart';

class BackendService {
  // Example data
  List<Emotion> emotions = [
    Emotion(id: '1', name: 'Happy'),
    Emotion(id: '2', name: 'Relaxed'),
    Emotion(id: '3', name: 'Energized'),
  ];

  List<Animal> animals = [
    Animal(
      id: '1',
      name: 'Animal 1',
      imageUrl: 'https://via.placeholder.com/150',
      description: 'Description of Animal 1',
      emotionId: '1',
      videoUrl: 'https://example.com/video1.mp4',
    ),
    // More animal objects with appropriate emotionIds and videoUrls
  ];

  // Other methods remain the same
}
