import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: color.primaryContainer,
              child: Icon(Icons.person, size: 40, color: color.primary),
            ),
            const SizedBox(height: 12),
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color.onSurface,
              ),
            ),
            Text(
              'user@example.com',
              style: TextStyle(fontSize: 14, color: color.onSurfaceVariant),
            ),
            const SizedBox(height: 24),
            Card(
              color: color.surfaceContainerHigh,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _StatItem(label: 'Habits', value: '10', color: color),
                    _StatItem(label: 'Done Today', value: '4', color: color),
                    _StatItem(
                      label: 'Best Streak',
                      value: '12d',
                      color: color,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.notifications, color: color.primary),
              title: const Text('Reminders'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.palette, color: color.primary),
              title: const Text('Theme Options'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final ColorScheme color;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: color.onSurfaceVariant),
        ),
      ],
    );
  }
}