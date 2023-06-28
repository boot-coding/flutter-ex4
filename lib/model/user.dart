import 'package:flutter/material.dart';

class User {
  String name;
  String email;
  String password;
  String? token;

  User(this.name, this.email, this.password, {this.token});

  // User.fromJson(Map<String, dynamic> json)
  //     : name = json['name'] ?? '',
  //       email = json['email'] ?? '',
  //       password = json['password'] ?? '',
  //       token = json['token'] ?? '';

  // User.fromJson(Map<String, dynamic> json) :
  //       name = json['name'] ?? '',
  //       email = json['email'] ?? '',
  //       password = json['password'] ?? '',
  //       token = json['token'] ?? '';

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['name'] ?? '',
      json['email'] ?? '',
      json['password'] ?? '',
      token: json['token'] ?? '',
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'token': token,
    };
  }
}