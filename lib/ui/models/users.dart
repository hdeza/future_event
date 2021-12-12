import 'package:flutter/foundation.dart';

class User {
  int _id;
  String _name;
  String _username;

  User(this._id, this._name, this._username);

  get getid => this._id;
  get getname => this._name;
  get getusername => this._username;

  set setid(int value) => this._id = value;
  set setname(String value) => this._name = value;
  set setusername(String value) => this._username = value;

  //GET DATA
  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      int.parse(json['id'].toString()),
      json['name'],
      json['username'],
    );
  }

  //SEND DATA
  Map<String, dynamic> toJSON() {
    return {'id': this._id, 'name': this._name, 'username': this._username};
  }
}
