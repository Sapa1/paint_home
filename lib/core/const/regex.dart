class AppRegexp {
  static const email = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static RegExp numbers = RegExp(r'[0-9]');

  static RegExp parentheses = RegExp(r'\(');
}
