import 'package:flutter/material.dart';
import 'package:habit_tracker/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Habit Tracker App',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 247, 190, 6),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 247, 190, 6),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 230, 158, 3),
          shape: CircleBorder(),
        ),
        textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black)),
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
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
    );
  }
}