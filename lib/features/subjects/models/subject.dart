import 'package:dmcampus/features/categories/models/category.dart';

class Subject {
  final String code;
  final String name;
  final int hours;
  final List<Category> categories;

  const Subject({
    required this.code,
    required this.name,
    required this.hours,
    required this.categories,
  });
}
