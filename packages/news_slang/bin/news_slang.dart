import 'dart:convert';
import 'dart:io';

import 'package:news_slang/news_slang.dart' as news_slang;
import 'package:path/path.dart';

void main(List<String> arguments) async {
  final mainDir = Directory(
    join(Directory.current.path, 'i18n'),
  );
  final dirs = mainDir.listSync().whereType<Directory>();
  if (dirs.isEmpty) {
    throw Exception('Localizations folders not found');
  }

  final outputDir = Directory(join(Directory.current.path, 'i18n_generated'));
  if (!outputDir.existsSync()) {
    outputDir.createSync();
  }
  for (final dir in dirs.toList()) {
    final json = await news_slang.readDir(dir);
    final jsonAsString = JsonEncoder.withIndent('  ').convert(json);
    final foldername =
        dir.uri.pathSegments[dir.uri.pathSegments.length - 2].toLowerCase();
    final filename = '$foldername.json';
    final file = File(join(outputDir.path, filename))
      ..createSync(recursive: true);
    file.writeAsStringSync(jsonAsString);
    print('✅ $filename');
  }
}
