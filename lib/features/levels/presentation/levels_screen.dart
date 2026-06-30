import 'package:flutter/material.dart';

import 'package:dmcampus/shared/widgets/app_card.dart';
import 'package:dmcampus/features/semesters/presentation/semesters_screen.dart';
import 'package:dmcampus/features/levels/data/levels_data.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Levels')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.separated(
          itemCount: levels.length,
          itemBuilder: (context, index) {
            return AppCard(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SemestersScreen(level: index + 1),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: Center(
                  child: Text(
                    levels[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 16);
          },
        ),
      ),
    );
  }
}
