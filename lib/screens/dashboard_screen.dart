import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';

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
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: habitCards[index],
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

class HabitCard extends StatelessWidget {
  const HabitCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.streakCount,
  });

  final Widget icon;
  final String title;
  final String subtitle;
  final String streakCount;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color.surfaceContainerHigh,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //ICON or LOGO
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.primaryContainer,
                  ),
                  child: icon,
                ),
                //Gap
                const SizedBox(width: 16),

                //Title and Subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(color: color.onSurface)),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 10,
                          color: color.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Streak Count
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                streakCount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: color.onSurface,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "Streak",
                style: TextStyle(fontSize: 10, color: color.onSurfaceVariant),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
