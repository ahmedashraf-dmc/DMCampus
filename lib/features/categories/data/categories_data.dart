import 'package:dmcampus/features/categories/models/category.dart';
import 'package:dmcampus/features/files/data/files_data.dart';

final emptyCategories = [
  Category(name: 'Lectures', files: const []),
  Category(name: 'Sections', files: const []),
  Category(name: 'Assignments', files: const []),
  Category(name: 'Previous Exams', files: const []),
  Category(name: 'Books', files: const []),
];

final technicalReportsCategories = [
  Category(name: 'Lectures', files: technicalReportsLectures),
  Category(name: 'Sections', files: technicalReportsSections),
  Category(name: 'Assignments', files: const []),
  Category(name: 'Previous Exams', files: const []),
  Category(name: 'Books', files: const []),
];

final english1Categories = [
  Category(name: 'Lectures', files: english1lectures),
  Category(name: 'Sections', files: const []),
  Category(name: 'Assignments', files: const []),
  Category(name: 'Previous Exams', files: const []),
  Category(name: 'Books', files: const []),
];
