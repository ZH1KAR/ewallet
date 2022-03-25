import 'package:flutter/foundation.dart';

class UserData {
  final String userId;
  final DateTime accountCreationTime;
  final String pincode;
  final String password;
  final String firstname;
  final String lastName;
  final String address;
  final double balance;
  final DateTime birthDate;
  final String Location;

  UserData(
      this.userId,
      this.accountCreationTime,
      this.pincode,
      this.password,
      this.firstname,
      this.lastName,
      this.address,
      this.balance,
      this.birthDate,
      this.Location);
}

class Users {
  Map<String, UserData> _users = {};

  Map<String, UserData> get users {
    return {..._users};
  }
}
