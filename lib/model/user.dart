class User {
  String name;
  String email;
  String password;
  String? token;

  User(this.name, this.email, this.password, {this.token});
}