import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static const String _userGoalKey = 'user_goal';

  static Future<void> saveUserGoal(int goal) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_userGoalKey, goal);
  }

  static Future<int> getUserGoal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_userGoalKey) ?? 0;
  }
}
