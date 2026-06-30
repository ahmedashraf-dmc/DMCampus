import 'package:dmcampus/features/files/models/study_file.dart';

class Category {
  final String name;
  final List<StudyFile> files;

  const Category({required this.name, required this.files});
}
