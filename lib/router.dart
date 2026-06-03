import 'package:go_router/go_router.dart';
import 'package:habit_tracker/screens/add_habit_screen.dart';
import 'package:habit_tracker/screens/habit_details_screen.dart';
import 'package:habit_tracker/widgets/nav_bar.dart';

class Routes {
  static const String dashboard = '/';
  static const String addHabit = '/add-habit';
  static const String habitDetails = '/habit-details';
}

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: Routes.dashboard,
      builder: (context, state) => const NavBar(),
    ),
    GoRoute(
      path: Routes.addHabit,
      builder: (context, state) => const AddHabitScreen(),
    ),
    GoRoute(
      path: Routes.habitDetails,
      builder: (context, state) => const HabitDetailsScreen(),
    ),
  ],
);