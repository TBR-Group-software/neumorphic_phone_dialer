class AppRegexp {
  static const String password = r'(?=.*[0-9a-zA-Z]).{6,}';
  static const String email = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String notEmptyString = r'@"^(?!\s*$).+"';
}
