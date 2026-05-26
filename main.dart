import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {

  runApp(
    const JobTrackerApp(),
  );
}

class JobTrackerApp
    extends StatelessWidget {

  const JobTrackerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner:
          false,

      title: 'Job Tracker',

      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: const HomeScreen(),
    );
  }
}