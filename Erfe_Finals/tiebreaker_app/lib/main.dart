import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/decision_service.dart';
import 'screens/home_screen.dart';

void main() => runApp(const TiebreakerApp());

class TiebreakerApp extends StatelessWidget {
  const TiebreakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DecisionService()),
      ],
      child: MaterialApp(
        title: 'Tiebreaker App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          // Set the scaffold background to a Baby Blue color
          scaffoldBackgroundColor: const Color(0xFFE3F2FD), // Light Baby Blue

          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            primary: Colors.purple,
            secondary: Colors.pinkAccent,
            // Setting surface to match the baby blue for consistency
            surface: const Color(0xFFE3F2FD),
          ),

          // Styling the "typing side" (TextFields)
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            // Making text fields white or very light pink so they pop against the blue background
            fillColor: Colors.white.withOpacity(0.8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.purple),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.pink, width: 2),
            ),
            labelStyle: const TextStyle(color: Colors.purple),
          ),

          // Applying theme to the FloatingActionButton
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.white,
          ),

          // Ensure AppBar matches the theme
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            centerTitle: true,
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}