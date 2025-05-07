void main() {
  // as
  dynamic obj = 'Hello Wong';
  String text = obj as String;
  print(text);

  // is
  var number = 42;
  print(number is int);
  print(number is String);

  // is!
  var pi = 3.14;
  print(pi is! int);
  print(pi is! double); // This check is unnecessary
}
