import 'dart:convert';
import 'dart:io';

Future<Map<String, dynamic>> readDir(Directory dir) async {
  final elements = await dir.list().toList();
  final files = elements
      .where(
        (e) => e is File && e.path.endsWith('.json'),
      )
      .toList();

  final json = <String, dynamic>{};

  for (final file in files) {
    final filename = file.uri.pathSegments.last.replaceFirst('.json', '');
    final content = (file as File).readAsStringSync();
    json[filename] = jsonDecode(content);
  }

  return json;
}
