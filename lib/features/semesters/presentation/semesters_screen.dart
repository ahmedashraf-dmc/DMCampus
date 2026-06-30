import 'package:dmcampus/features/subjects/presentation/subjects_screen.dart';
import 'package:flutter/material.dart';

import 'package:dmcampus/shared/widgets/app_card.dart';
import 'package:dmcampus/features/semesters/data/semesters_data.dart';
import 'package:dmcampus/features/subjects/data/subjects_data.dart';
import 'package:dmcampus/features/subjects/models/subject.dart';

class SemestersScreen extends StatelessWidget {
  final int level;

  List<Subject> getSubjects(int semester) {
    if (level == 1 && semester == 1) {
      return level1FirstSemesterSubjects;
    }

    if (level == 1 && semester == 2) {
      return level1SecondSemesterSubjects;
    }

    if (level == 2 && semester == 1) {
      return level2FirstSemesterSubjects;
    }

    if (level == 2 && semester == 2) {
      return level2SecondSemesterSubjects;
    }

    if (level == 3 && semester == 1) {
      return level3FirstSemesterSubjects;
    }

    if (level == 3 && semester == 2) {
      return level3SecondSemesterSubjects;
    }

    if (level == 4 && semester == 1) {
      return level4FirstSemesterSubjects;
    }

    return level4SecondSemesterSubjects;
  }

  const SemestersScreen({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Semesters')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return AppCard(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: Center(
                  child: Text(
                    semesters[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SubjectsScreen(subjects: getSubjects(index + 1)),
                  ),
                );
              },
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 16);
          },
          itemCount: semesters.length,
        ),
      ),
    );
  }
}
