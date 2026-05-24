import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habit Tracker App',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 82, 0, 150),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 107, 0, 150),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 102, 0, 150),
          shape: CircleBorder(),
        ),
      ),
      darkTheme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(
              seedColor: Colors.grey,
              brightness: Brightness.dark,
            ).copyWith(
              surface: Colors.black,
              surfaceContainerHigh: const Color.fromARGB(255, 30, 30, 30),
              primary: Colors.white,
              primaryContainer: const Color.fromARGB(255, 50, 50, 50),
              onSurface: Colors.white,
              onSurfaceVariant: Colors.grey,
            ),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 20, 20, 20),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: CircleBorder(),
        ),
      ),
      home: const DashboardScreen(),
    );
  }
}
