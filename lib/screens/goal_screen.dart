import 'package:flutter/material.dart'; 
import 'package:animal_therapy/utils/user_preferences.dart';

class GoalScreen extends StatefulWidget {
  static const String id = 'goal_screen';

  const GoalScreen({super.key, key});
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
    await UserPreferences.saveUserGoal(_goal);    
    ScaffoldMessenger.of(context).showSnackBar(        
      const SnackBar(content: Text('Goal saved: $_goal')),
    );
  }

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goal Setting'),
      ),    
      body: Center(
        child: Column(...),
      )
    );
  } 
}
