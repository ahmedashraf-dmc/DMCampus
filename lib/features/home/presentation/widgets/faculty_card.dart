import 'package:flutter/material.dart';

import 'package:dmcampus/features/departments/presentation/departments_screen.dart';
import 'package:dmcampus/shared/widgets/app_card.dart';

class FacultyCard extends StatelessWidget {
  const FacultyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DepartmentsScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/technology_and_education_logo.png',
              width: 220,
            ),

            const SizedBox(height: 20),

            const Text(
              'Faculty of Technology and Education',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
