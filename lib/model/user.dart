class User {
  String? username;
  String password;
  String phoneNumber;

  User(
      {required this.password,
      required this.phoneNumber,
      this.username = "username"});
}
