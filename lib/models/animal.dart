class Animal {
  final String id;
  final String name;
  final String imageUrl;
  final String description;

  Animal({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  // Convert Firestore document to Animal object
  factory Animal.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Animal(
      id: doc.id,
      name: data['name'],
      imageUrl: data['imageUrl'],
      description: data['description'],
    );
  }

  // Convert Animal object to map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
    };
  }
}

