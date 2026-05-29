import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';
import 'package:habit_tracker/screens/habit_details_screen.dart';
import 'package:habit_tracker/widgets/habit_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final List<Widget> habitCards = [
      HabitCard(
        icon: Icon(
          Icons.local_drink,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Drinking Water",
        subtitle: "1/3 glasses (2 Liters)",
        streakCount: "3 days",
      ),
      HabitCard(
        icon: Icon(
          Icons.fitness_center,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Exercise",
        subtitle: "30 minutes",
        streakCount: "5 days",
      ),
      HabitCard(
        icon: Icon(
          Icons.self_improvement,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Meditation",
        subtitle: "10 minutes",
        streakCount: "2 days",
      ),
      HabitCard(
        icon: Icon(Icons.book, color: const Color.fromARGB(255, 82, 0, 150)),
        title: "Reading",
        subtitle: "20 pages",
        streakCount: "4 days",
      ),
      HabitCard(
        icon: Icon(
          Icons.nightlight_round,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Sleep",
        subtitle: "8 hours",
        streakCount: "6 days",
      ),
      HabitCard(
        icon: Icon(
          Icons.run_circle,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Running",
        subtitle: "30 minutes",
        streakCount: "4 days",
      ),
      HabitCard(
        icon: Icon(Icons.code, color: const Color.fromARGB(255, 82, 0, 150)),
        title: "Coding",
        subtitle: "30 minutes",
        streakCount: "4 days",
      ),
      HabitCard(
        icon: Icon(Icons.movie, color: const Color.fromARGB(255, 82, 0, 150)),
        title: "Entertainment",
        subtitle: "30 minutes",
        streakCount: "10 days",
      ),
      HabitCard(
        icon: Icon(
          Icons.newspaper,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Reading Newspaper",
        subtitle: "10 minutes",
        streakCount: "8 days",
      ),
      HabitCard(
        icon: Icon(
          Icons.fastfood,
          color: const Color.fromARGB(255, 82, 0, 150),
        ),
        title: "Avoiding Junk Food",
        subtitle: "No junk food",
        streakCount: "4 days",
      ),
    ];

    // bool isLoading = true;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text('Habit Tracker')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator to Add Habit Screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddHabitScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: isPortrait
            ? PortraitLayout(habitCards: habitCards)
            : LandscapeLayout(habitCards: habitCards),
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  final List<Widget> habitCards;
  const PortraitLayout({super.key, required this.habitCards});
  @override
  Widget build(context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: habitCards.length,
      itemBuilder: (context, index) {
        // Using gesture detector
        return GestureDetector(
          onTap: () {
            // Navigate to Habit Details Screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HabitDetailsScreen()),
            );
          },
          //Using Dismissible
          child: Dismissible(
            onDismissed: (direction){
              debugPrint('Habit dismissed $direction');
            },
            key: Key(habitCards[index].toString()),
            direction: DismissDirection.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: habitCards[index],
            ),
          ),
        );
      },
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  final List<Widget> habitCards;
  const LandscapeLayout({super.key, required this.habitCards});
  @override
  Widget build(context) {
    final cardWidth = (MediaQuery.of(context).size.width - 16) / 2;
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: habitCards.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: cardWidth / 100,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return habitCards[index];
      },
    );
  }
}
