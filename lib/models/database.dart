import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:animal_therapy/models/animal.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Get a stream of animal data from Firestore
  Stream<List<Animal>> getAnimals() {
    return _db.collection('animals').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Animal.fromFirestore(doc)).toList());
  }

  // Add a new animal to Firestore
  Future<void> addAnimal(Animal animal) async {
    await _db.collection('animals').add(animal.toMap());
  }
}
