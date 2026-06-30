class StudyFile {
  final String? name;
  final String size;
  final String assetPath;

  const StudyFile({this.name, required this.size, required this.assetPath});

  String get displayName => name ?? assetPath.split('/').last;
}
