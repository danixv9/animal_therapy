import 'package:flutter/material.dart';
import 'package:animal_therapy/utils/user_preferences.dart';

class GoalScreen extends StatefulWidget {
  static const String id = 'goal_screen';

  const GoalScreen({super.key});

  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  int _goal = 0;

  @override
  void initState() {
    super.initState();
    _getSavedGoal();
  }

  Future<void> _getSavedGoal() async {
    int savedGoal = await UserPreferences.getUserGoal();
    setState(() {
      _goal = savedGoal;
    });
  }

  void _saveGoal() async {
    // Save the user's goal using the UserPreferences utility class
    await UserPreferences.saveUserGoal(_goal);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Goal saved: $_goal')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goal Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your goal is to watch $_goal animal videos',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Slider(
              value: _goal.toDouble(),
              min: 0,
              max: 100,
              divisions: 20,
              onChanged: (double newValue) {
                setState(() {
                  _goal = newValue.toInt();
                });
              },
            ),
            ElevatedButton(
              onPressed: _saveGoal,
              child: const Text('Save Goal'),
            ),
          ],
        ),
      ),
    );
  }
}
