import 'package:flutter/material.dart';

class GoalSetting extends StatefulWidget {
  const GoalSetting({super.key});

  @override
  _GoalSettingState createState() => _GoalSettingState();
}

class _GoalSettingState extends State<GoalSetting> {
  int _goal = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Set a daily goal for watching animal videos:'),
        DropdownButton<int>(
          value: _goal,
          onChanged: (int newValue) {
            setState(() {
              _goal = newValue;
            });
          },
          items: <int>[0, 1, 2, 3, 4, 5]
              .map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text('$value videos'),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            // Save the goal
          },
          child: const Text('Set Goal'),
        ),
      ],
    );
  }
}
