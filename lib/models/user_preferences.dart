import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static Future<void> setFavoriteAnimal(String animalId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('favorite_animal', animalId);
  }

  static Future<String?> getFavoriteAnimal() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('favorite_animal');
  }
}
