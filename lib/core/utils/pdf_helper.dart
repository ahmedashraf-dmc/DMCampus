import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

class PdfHelper {
  static Future<void> openPdf(String assetPath) async {
    final data = await rootBundle.load(assetPath);
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/temp.pdf');

    await file.writeAsBytes(data.buffer.asUint8List());
    await OpenFilex.open(file.path);
  }
}
