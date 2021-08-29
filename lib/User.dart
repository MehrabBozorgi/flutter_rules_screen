import 'package:flutter/material.dart';

class UserItem {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String password;
  final String address;
  final String token;

  UserItem({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.address,
    required this.token,
  });

  factory UserItem.fromJson(Map<String, dynamic> json) {
    return UserItem(
      id: int.parse(json['id']),
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      address: json['address'],
      token: json['token'],
    );
  }
}

class UserProvider with ChangeNotifier {
  List<UserItem> _item = [];

  List<UserItem> get item => _item;


  bool? _checkValue = false;

  bool? get checkValue => _checkValue;

  bool? getValue() {
    // _checkValue=false;
    _checkValue = !_checkValue!;
    notifyListeners();
  }
}
