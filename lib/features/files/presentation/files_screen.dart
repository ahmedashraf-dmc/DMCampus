import 'package:flutter/material.dart';

import 'package:dmcampus/shared/widgets/app_card.dart';
import 'package:dmcampus/core/utils/pdf_helper.dart';
import 'package:dmcampus/features/files/models/study_file.dart';

class FilesScreen extends StatelessWidget {
  final List<StudyFile> files;

  const FilesScreen({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Files')),
      body: files.isEmpty
          ? const Center(
              child: Text('Empty', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            )
          : Padding(
              padding: const EdgeInsets.all(24),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return AppCard(
                    child: ListTile(
                      leading: const Icon(Icons.picture_as_pdf),
                      title: Text(files[index].displayName),
                      subtitle: Text(files[index].size),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    onTap: () async {
                      await PdfHelper.openPdf(files[index].assetPath);
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: files.length,
              ),
            ),
    );
  }
}
