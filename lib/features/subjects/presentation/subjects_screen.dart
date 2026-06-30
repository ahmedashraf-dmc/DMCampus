import 'package:dmcampus/features/categories/presentation/categories_screen.dart';
import 'package:dmcampus/features/subjects/models/subject.dart';
import 'package:flutter/material.dart';

import 'package:dmcampus/shared/widgets/app_card.dart';

class SubjectsScreen extends StatelessWidget {
  final List<Subject> subjects;

  const SubjectsScreen({super.key, required this.subjects});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Subjects')),
      body: subjects.isEmpty
          ? const Center(
              child: Text('Empty', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            )
          : Padding(
              padding: const EdgeInsets.all(24),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return AppCard(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            subjects[index].name,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '${subjects[index].code} • ${subjects[index].hours} Hours',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      final subject = subjects[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(categories: subject.categories),
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: subjects.length,
              ),
            ),
    );
  }
}
