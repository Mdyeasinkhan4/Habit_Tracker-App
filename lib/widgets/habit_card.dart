import 'package:flutter/material.dart';

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
