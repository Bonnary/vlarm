import 'package:flutter/material.dart';
import 'package:vlarm/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryBackground,
      appBar: AppBar(
        backgroundColor: theme.primary,
        title: Text(
          'Home',
          style: theme.headlineMedium.override(color: theme.primaryText),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 80, color: theme.secondary),
            const SizedBox(height: 20),
            Text(
              'Welcome to Vlarm',
              style: theme.headlineMedium.override(color: theme.secondary),
            ),
            const SizedBox(height: 10),
            Text(
              'Your home for amazing content',
              style: theme.bodyMedium.override(color: theme.secondaryText),
            ),
          ],
        ),
      ),
    );
  }
}
