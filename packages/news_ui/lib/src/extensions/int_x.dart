extension IntX on int {
  DateTime get date => DateTime.fromMillisecondsSinceEpoch(this * 1000);
}
