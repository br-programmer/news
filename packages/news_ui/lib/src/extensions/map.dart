import 'dart:convert';

extension MapX on Map<String, dynamic> {
  String get encode => jsonEncode(this);
}
