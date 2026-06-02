import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HabitDetailsScreen extends StatelessWidget {
  const HabitDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit Details'),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(child: Text('Details about the habit will be shown here.')),
    );
  }
}