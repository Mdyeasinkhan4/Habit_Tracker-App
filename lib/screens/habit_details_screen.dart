import 'package:flutter/material.dart';

class HabitDetailsScreen extends StatelessWidget {
  const HabitDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Habit Details')),
      body: Center(
        child: Text('Details about the habit will be shown here.'),
      ),
    );
  }
}
