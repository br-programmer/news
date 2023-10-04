import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String createAt(String locale) => DateFormat('EEEE, d MMM y', locale).format(
        toLocal(),
      );

  String dayInText(String locale) => DateFormat('EEEE', locale).format(
        toLocal(),
      );

  String get myHour => DateFormat('HH:mm').format(toLocal());

  bool get today {
    final today = DateTime.now();
    return today.day == day && today.month == month && today.year == year;
  }

  bool get tomorrow {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.day == day &&
        tomorrow.month == month &&
        tomorrow.year == year;
  }
}
