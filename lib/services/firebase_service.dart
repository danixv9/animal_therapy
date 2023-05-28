import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'animal.dart';
import 'emotion.dart';
import 'user.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Fetch emotions from Firestore
  Future<List<Emotion>> getEmotions() async {
    QuerySnapshot snapshot = await _firestore.collection('emotions').get();
    return snapshot.docs.map((doc) => Emotion(id: doc.id, name: doc['name'])).toList();
  }

  // Fetch animals from Firestore by emotionId
  Future<List<Animal>> getAnimalsByEmotionId(String emotionId) async {
    QuerySnapshot snapshot = await _firestore
        .collection('animals')
        .where('emotionId', isEqualTo: emotionId)
        .get();
    return snapshot.docs.map((doc) => Animal.fromMap(doc.data())).toList();
  }

  // Search animals by name
  Future<List<Animal>> searchAnimals(String query) async {
    QuerySnapshot snapshot = await _firestore
        .collection('animals')
        .where('name', isEqualTo: query)
        .get();
    return snapshot.docs.map((doc) => Animal.fromMap(doc.data())).toList();
  }

  // Fetch user by id
  Future<UserModel> getUserById(String userId) async {
    DocumentSnapshot snapshot = await _firestore.collection('users').doc(userId).get();
    return UserModel.fromMap(snapshot.data());
  }

  // Update user's favorite animals
  Future<void> updateUserFavorites(String userId, List<String> favoriteAnimalIds) async {
    await _firestore.collection('users').doc(userId).update({'favoriteAnimalIds': favoriteAnimalIds});
  }

  // Firebase authentication methods
  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
