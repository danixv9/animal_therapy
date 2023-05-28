class UserModel {
  final String id;
  final String email;
  final List<String> favoriteAnimalIds;

  UserModel({required this.id, required this.email, required this.favoriteAnimalIds});

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      email: data['email'],
      favoriteAnimalIds: List<String>.from(data['favoriteAnimalIds'] ?? []),
    );
  }
}
