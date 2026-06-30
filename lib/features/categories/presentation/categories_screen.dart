import 'package:flutter/material.dart';

import 'package:dmcampus/features/files/presentation/files_screen.dart';
import 'package:dmcampus/features/categories/models/category.dart';
import 'package:dmcampus/shared/widgets/app_card.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories;

  const CategoriesScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: categories.isEmpty
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
                      child: Center(
                        child: Text(
                          categories[index].name,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    onTap: () {
                      final category = categories[index];
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FilesScreen(files: category.files)),
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: categories.length,
              ),
            ),
    );
  }
}
